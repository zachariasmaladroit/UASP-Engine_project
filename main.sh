#!/sbin/sh
#Main script program
#By KKSiS

grep_prop() {
  REGEX="s/^$1=//p"
  shift
  FILES=$@
  if [ -z "$FILES" ]; then
    FILES='/system/build.prop'
  fi
  cat $FILES 2>/dev/null | sed -n $REGEX | head -n 1
}

cp_perm() {
  cp -f $1 $2 || exit 1
  set_perm $2 $3 $4 $5 $6
}

set_perm() {
  chown $2:$3 $1 || exit 1
  chmod $4 $1 || exit 1
  if [ "$5" ]; then
    chcon $5 $1 2>/dev/null
  else
    chcon 'u:object_r:system_file:s0' $1 2>/dev/null
  fi
}

##############################################################################

echo "@======================================"
echo "@   UASP Engine Installer by KKSiS     "
echo "@======================================"
echo "@"

echo "@   - Mounting /system and /data"
mount /system >/dev/null 2>&1
mount /data >/dev/null 2>&1
mount -o remount,rw /system
mount -o remount,rw /data >/dev/null 2>&1
if [ ! -f '/system/build.prop' ]; then
  echo "@   - Failed: /system not mounted!"
  exit 1
fi
echo "@   - Remove some files if exist" 
