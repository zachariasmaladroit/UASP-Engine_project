BRAND=$(cat /system/build.prop | grep "ro.product.brand=" | dd bs=1 skip=17)
API=$(cat /system/build.prop | grep "ro.build.version.sdk=" | dd bs=1 skip=21 count=2)
cp_perm 0 0 0644 /tmp/dap/lib/soundfx/libswdap-mod.so /system/lib/soundfx/libswdap-mod.so
cp_perm 0 0 0644 /tmp/dap/lib/libdlbdapstorage.so /system/lib/libdlbdapstorage.so#!/sbin/sh
OUTFD=$2
ZIP=$3

SYSTEMLIB=/system/lib

ui_print() {
  echo -n -e "ui_print $1\n" > /proc/self/fd/$OUTFD
  echo -n -e "ui_print\n" > /proc/self/fd/$OUTFD
}

ch_con() {
  LD_LIBRARY_PATH=$SYSTEMLIB /system/toolbox chcon -h u:object_r:system_file:s0 $1
  LD_LIBRARY_PATH=$SYSTEMLIB /system/bin/toolbox chcon -h u:object_r:system_file:s0 $1
  chcon -h u:object_r:system_file:s0 $1
  LD_LIBRARY_PATH=$SYSTEMLIB /system/toolbox chcon u:object_r:system_file:s0 $1
  LD_LIBRARY_PATH=$SYSTEMLIB /system/bin/toolbox chcon u:object_r:system_file:s0 $1
  chcon u:object_r:system_file:s0 $1
}

ch_con_ext() {
  LD_LIBRARY_PATH=$SYSTEMLIB /system/toolbox chcon $2 $1
  LD_LIBRARY_PATH=$SYSTEMLIB /system/bin/toolbox chcon $2 $1
  chcon $2 $1
}

ln_con() {
  LD_LIBRARY_PATH=$SYSTEMLIB /system/toolbox ln -s $1 $2
  LD_LIBRARY_PATH=$SYSTEMLIB /system/bin/toolbox ln -s $1 $2
  ln -s $1 $2
  ch_con $2
}

set_perm() {
  chown $1.$2 $4
  chown $1:$2 $4
  chmod $3 $4
  ch_con $4
  ch_con_ext $4 $5
}

cp_perm() {
  rm $5
  if [ -f "$4" ]; then
    cat $4 > $5
    set_perm $1 $2 $3 $5 $6
  fi
}

cat /system/bin/toolbox > /system/toolbox
chmod 0755 /system/toolbox
ch_con /system/toolbox

ui_print "DAP_r6.5"

# Mount system
ui_print "Mounting system..."
mount /system
mount -o rw,remount /system
mount -o rw,remount /system /system

# Remove files
ui_print "Removing files..."
rm -rf /system/app/As
rm -rf /system/app/AsUI
rm -f /system/lib/soundfx/libswdap-mod.so
rm -f /system/lib/libdlbdapstorage.so
rm -f /system/etc/dolby

# Normal/vendor config locations
CONFIG_FILE=/system/etc/audio_effects.conf
VENDOR_CONFIG=/system/vendor/etc/audio_effects.conf

# If vendor exists, patch it
if [ -f $VENDOR_CONFIG ];
then
	# Remove library & effect
	sed -i '/dap {/,/}/d' $VENDOR_CONFIG
fi

# Remove library & effect
sed -i '/dap {/,/}/d' $CONFIG_FILE

# Extract files
ui_print "Extracting files..."
cd /tmp
mkdir dap
cd dap
unzip -o "$ZIP"

# Copy files
ui_print "Copying files..."



# Get API version
API=$(cat /system/build.prop | grep "ro.build.version.sdk=" | dd bs=1 skip=21 count=2)

if [ "$API" -ge "21" ];
then
	ui_print "Make sure to turn OFF NuPlayer in Developer Options!"
	mkdir -p /system/app/As
	set_perm 0 0 0755 /system/app/As
	cp_perm 0 0 0644 /tmp/dap/app/As/As.apk /system/app/As/As.apk
	mkdir -p /system/app/AsUI
	set_perm 0 0 0755 /system/app/AsUI
	cp_perm 0 0 0644 /tmp/dap/app/AsUI/AsUI.apk /system/app/AsUI/AsUI.apk
else
	cp_perm 0 0 0644 /tmp/dap/app/As/As.apk /system/app/As.apk
	cp_perm 0 0 0644 /tmp/dap/app/AsUI/AsUI.apk /system/app/AsUI.apk
fi

mkdir -p /system/etc/dolby
set_perm 0 0 0755 /system/etc/dolby
cp_perm 0 0 0644 /tmp/dap/etc/dolby/ds-default.xml /system/etc/dolby/ds-default.xml

# Install rom backup script if available
if [ -d /system/addon.d ]; 
then
	cp_perm 0 0 0755 /tmp/dap/addon.d/23-dap.sh /system/addon.d/23-dap.sh
fi

ui_print "Patching $CONFIG_FILE..."

# If vendor exists, patch it
if [ -f $VENDOR_CONFIG ];
then
	# Add libary
	sed -i 's/^libraries {/libraries {\n  dap {\n    path \/system\/lib\/soundfx\/libswdap-mod.so\n  }/g' $VENDOR_CONFIG
	
	# Add effect
	sed -i 's/^effects {/effects {\n  dap {\n    library dap\n    uuid 9d4921da-8225-4f29-aefa-39537a041337\n  }/g' $VENDOR_CONFIG
fi

# Add libary
sed -i 's/^libraries {/libraries {\n  dap {\n    path \/system\/lib\/soundfx\/libswdap-mod.so\n  }/g' $CONFIG_FILE

# Add effect
sed -i 's/^effects {/effects {\n  dap {\n    library dap\n    uuid 9d4921da-8225-4f29-aefa-39537a041337\n  }/g' $CONFIG_FILE

# Cleanup
ui_print "Brought to you by worstenbrood@2015"
rm /system/toolbox
umount /system
rm -rf /tmp/dap
