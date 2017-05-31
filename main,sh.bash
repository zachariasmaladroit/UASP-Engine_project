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

add_text() {
  echo "$1" >> $2
}
##############################################################################

echo "@======================================@"
echo "@     Configurable UASP Engine         @"
echo "@       UASP Engine by KKSiS           @"
echo "@======================================@"
echo ""

if [ ! -f "system/xposed.prop" ]; then
  add_text #=======================================
  add_text #        Engine Information
  add_text #        UASP Engine by KKSiS
  add_text #=======================================
  add_text uasp.core.version=1.0-dev
  add_text uasp.core.codename=DEV
  add_text uasp.audiooffload.multiple.enabled=true
  add_text uasp.audiooffload.gapless.enabled=true
  add_text uasp.audiooffload.track.enabled=true
  add_text uasp.htcaudio.swalt.enable=1
  add_text uasp.htcaudio.alc.enable=1
  add_text uasp.SupportHTCHWAEC=1
  add_text uasp.supported.ldac.=true
  add_text uasp.pcm.samplerate=96000
  add_text uasp.sounddriver=alsa
  add_text uasp.supported.vivohifi=true
  add_text uasp.audio.decode=mpq
  add_text uasp.enable.dts_m6=true 
  add_text uasp.enable.dts_eagle=true
  add_text uasp.persist.audio.hifi_dac=ON
  add_text uasp.persist.audio.voice.clarity=ON
  add_text uasp.htc.audio.lpa.a2dp=0
  add_text uasp.enable.htcaudio=0
  add_text uasp.enable.htcaudio.dmic=1
  add_text uasp.support.hw_dolby=true
  add_text uasp.support.hw_dts=true
  add_text uasp.support_harman=true
  add_text uasp.support_boomsound_effect=true
  add_text uasp.sony.ahc.supported=yes
  add_text uasp.ro.semc.sound_effects_enabled=true
  add_text uasp.ro.semc.xloud.supported=true
  add_text uasp.ro.semc.enhance.supported=true
  add_text uasp.ro.semc.clearaudio.supported=true
  add_text uasp.ro.sony.walkman.logger=1
  add_text uasp.ro.semc.clearphase.supported=true
  add_text uasp.persist.service.enhance.enable=1
  add_text uasp.ro.somc.sforce.supported=true
  add_text uasp.ro.somc.dseehx.supported=true
  add_text uasp.ro.semc.cp.default_setting=true
  add_text uasp.ro.semc.sfs.default_setting=true

fi

echo "- Mounting /system and /data"
mount /system >/dev/null 2>&1
mount /data >/dev/null 2>&1
mount -o remount,rw /system
mount -o remount,rw /data >/dev/null 2>&1
if [ ! -f '/system/build.prop' ]; then
  echo "! Failed: /system not mounted!"
  exit 1
fi

echo "- Checking environment"
brand=$(grep_prop ro.product.brand)