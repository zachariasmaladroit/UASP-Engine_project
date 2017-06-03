#!/sbin/sh

if [ "`ro.config.hw_uasp=true /system/build.prop`" ]; 
then
	:
elif [ -e /system/framework/com.sony.device.jar ]; 
then
echo "#=======================================" >> /system/build.prop
echo "#       UASP Engine by KKSiS" >> /system/build.prop
echo "#=======================================" >> /system/build.prop
echo "ro.config.hw_uasp=true" >> /system/build.prop
echo "ro.config.hw_dolby=true" >> /system/build.prop
echo "ro.config.hw_dts=true" >> /system/build.prop
echo "ro.config.hifi_config_state=1" >> /system/build.prop
echo "ro.audio.pcm.samplerate=96000" >> /system/build.prop
echo "ro.audio.samplerate=96000" >> /system/build.prop
echo "ro.somc.ldac.audio.supported=true" >> /system/build.prop
echo "ro.sound.driver=alsa" >> /system/build.prop
echo "sony.ahc.supported=yes" >> /system/build.prop
echo "support_harman=true" >> /system/build.prop
echo "support_boomsound_effect=true" >> /system/build.prop
echo "audio.offload.pcm.24bit.enable=true" >> /system/build.prop
echo "audio.offload.multiple.enabled=true" >> /system/build.prop
echo "audio.offload.gapless.enabled=true" >> /system/build.prop
echo "audio.offload.passthrough=false" >> /system/build.prop
echo "audio.offload.track.enabled=true" >> /system/build.prop
echo "audio.offload.min.duration.secs=30" >> /system/build.prop
echo "tunnel.audio.encode=false" >> /system/build.prop
echo "AUDIODRIVER=alsa" >> /system/build.prop
echo "persist.vivo.phone.hifi=Have_hifi" >> /system/build.prop
echo "persist.audio.SupportHTCHWAEC=1" >> /system/build.prop
echo "use.dts_m6=true " >> /system/build.prop
echo "use.dts_m6_notify=true" >> /system/build.prop
echo "use.dts_eagle=true" >> /system/build.prop
echo "persist.audio.hifi_dac=ON" >> /system/build.prop
echo "persist.audio.voice.clarity=ON" >> /system/build.prop
echo "alsa.mixer.playback.master=Speaker" >> /system/build.prop
echo "alsa.mixer.playback.earpiece=Earpiece" >> /system/build.prop
echo "alsa.mixer.playback.headset=Headset" >> /system/build.prop
echo "alsa.mixer.playback.speaker=Speaker" >> /system/build.prop
echo "alsa.mixer.playback.bt.sco=BTHeadset" >> /system/build.prop
echo "alsa.mixer.capture.master=Mic" >> /system/build.prop
echo "alsa.mixer.capture.earpiece=Mic" >> /system/build.prop
echo "alsa.mixer.capture.headset=Mic" >> /system/build.prop
echo "alsa.mixer.capture.speaker=Mic" >> /system/build.prop
echo "alsa.mixer.capture.bt.sco=BTHeadset" >> /system/build.prop
echo "htc.audio.lpa.a2dp=0" >> /system/build.prop
echo "htc.audio.global.state=0" >> /system/build.prop
echo "htc.audio.global.profile=0" >> /system/build.prop
echo "htc.audio.q6.topology=0" >> /system/build.prop
echo "htc.audio.enable_dmic=1" >> /system/build.prop
echo "htc.audio.swalt.enable=1" >> /system/build.prop
echo "htc.audio.swalt.mingain=14512" >> /system/build.prop
echo "htc.audio.alc.enable=1" >> /system/build.prop
else
echo "" >> /system/build.prop
echo "#=======================================" >> /system/build.prop
echo "#       UASP Engine by KKSiS" >> /system/build.prop
echo "#=======================================" >> /system/build.prop
echo "ro.config.hw_uasp=true" >> /system/build.prop
echo "ro.config.hw_dts=true" >> /system/build.prop
echo "ro.config.hw_dolby=true" >> /system/build.prop
echo "ro.config.hifi_config_state=1" >> /system/build.prop
echo "ro.sound.driver=alsa" >> /system/build.prop
echo "ro.audio.samplerate=96000" >> /system/build.prop
echo "ro.audio.pcm.samplerate=96000" >> /system/build.prop
echo "ro.semc.sound_effects_enabled=true" >> /system/build.prop
echo "ro.semc.enhance.supported=true" >> /system/build.prop
echo "ro.semc.xloud.supported=true" >> /system/build.prop
echo "ro.semc.clearaudio.supported=true" >> /system/build.prop
echo "ro.semc.clearphase.supported=true" >> /system/build.prop
echo "ro.semc.xloud.default_setting=true" >> /system/build.prop
echo "ro.semc.cp.default_setting=true" >> /system/build.prop
echo "ro.somc.ldac.audio.supported=true" >> /system/build.prop
echo "ro.somc.dseehx.supported=true" >> /system/build.prop
echo "ro.somc.sforce.supported=true" >> /system/build.prop
echo "ro.semc.sfs.default_setting=true" >> /system/build.prop
echo "ro.sony.walkman.logger=1" >> /system/build.prop
echo "persist.service.xloud.enable=1" >> /system/build.prop
echo "persist.service.enhance.enable=1" >> /system/build.prop
echo "persist.service.clearaudio.enable=1" >> /system/build.prop
echo "persist.service.walkman.enable=1" >> /system/build.prop
echo "persist.service.clearphase.enable=1" >> /system/build.prop
echo "persist.service.sforce.enable=1" >> /system/build.prop
echo "persist.service.dseehx.enable=1" >> /system/build.prop
echo "persist.vivo.phone.hifi=Have_hifi" >> /system/build.prop
echo "persist.audio.SupportHTCHWAEC=1" >> /system/build.prop
echo "persist.audio.hifi_dac=ON" >> /system/build.prop
echo "persist.audio.voice.clarity=ON" >> /system/build.prop
echo "audio.offload.pcm.24bit.enable=true" >> /system/build.prop
echo "audio.offload.multiple.enabled=true" >> /system/build.prop
echo "audio.offload.gapless.enabled=true" >> /system/build.prop
echo "audio.offload.passthrough=false" >> /system/build.prop
echo "audio.offload.min.duration.secs=30" >> /system/build.prop
echo "audio.offload.track.enabled=true" >> /system/build.prop
echo "alsa.mixer.playback.master=Speaker" >> /system/build.prop
echo "alsa.mixer.playback.earpiece=Earpiece" >> /system/build.prop
echo "alsa.mixer.playback.headset=Headset" >> /system/build.prop
echo "alsa.mixer.playback.speaker=Speaker" >> /system/build.prop
echo "alsa.mixer.playback.bt.sco=BTHeadset" >> /system/build.prop
echo "alsa.mixer.capture.master=Mic" >> /system/build.prop
echo "alsa.mixer.capture.earpiece=Mic" >> /system/build.prop
echo "alsa.mixer.capture.headset=Mic" >> /system/build.prop
echo "alsa.mixer.capture.speaker=Mic" >> /system/build.prop
echo "alsa.mixer.capture.bt.sco=BTHeadset" >> /system/build.prop
echo "htc.audio.lpa.a2dp=0" >> /system/build.prop
echo "htc.audio.global.state=0" >> /system/build.prop
echo "htc.audio.global.profile=0" >> /system/build.prop
echo "htc.audio.q6.topology=0" >> /system/build.prop
echo "htc.audio.enable_dmic=1" >> /system/build.prop
echo "htc.audio.swalt.enable=1" >> /system/build.prop
echo "htc.audio.swalt.mingain=14512" >> /system/build.prop
echo "htc.audio.alc.enable=1" >> /system/build.prop
echo "sony.support.effect=0x1FF" >> /system/build.prop
echo "sony.ahc.supported=yes" >> /system/build.prop
echo "sony.effect.custom.sp_bundle=0x122" >> /system/build.prop
echo "sony.effect.custom.caplus_hs=0x298" >> /system/build.prop
echo "sony.effect.custom.caplus_sp=0x2B8" >> /system/build.prop
echo "com.sonymobile.dseehx_enabled=true" >> /system/build.prop
echo "com.sonyericsson.xloud_enabled=true" >> /system/build.prop
echo "com.sonymobile.clearphase_enabled=true" >> /system/build.prop
echo "com.sonymobile.sforce_enabled=true" >> /system/build.prop
echo "use.dts_m6=true " >> /system/build.prop
echo "use.dts_m6_notify=true" >> /system/build.prop
echo "use.dts_eagle=true" >> /system/build.prop
echo "support_harman=true" >> /system/build.prop
echo "support_boomsound_effect=true" >> /system/build.prop
echo "AUDIODRIVER=alsa" >> /system/build.prop
echo "tunnel.audio.encode=false" >> /system/build.prop
echo "mpq.audio.decode=true" >> /system/build.prop
echo "C_A_PLUS=1" >> /system/build.prop
echo "dsee_hx_state=1" >> /system/build.prop
echo "DSEE_HX=1" >> /system/build.prop
echo "#=====================================" >> /system/build.prop
fi