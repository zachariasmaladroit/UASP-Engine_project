#!/sbin/sh

busybox echo " eXtremeBeats eXtreme Tweak " >> /system/build.prop
busybox echo "htc.audio.swalt.enable=1" >> /system/build.prop
busybox echo "htc.audio.swalt.mingain=14512" >> /system/build.prop
busybox echo "htc.audio.alc.enable=1" >> /system/build.prop
busybox echo "persist.audio.SupportHTCHWAEC=1" >> /system/build.prop
busybox echo "af.resampler.quality=255" >> /system/build.prop
busybox echo "persist.af.resampler.quality=255" >> /system/build.prop
busybox echo "af.resample=52000" >> /system/build.prop
busybox echo "persist.af.resample=52000" >> /system/build.prop
busybox echo "ro.audio.samplerate=48000" >> /system/build.prop
busybox echo "persist.dev.pm.dyn_samplingrate=1" >> /system/build.prop
busybox echo "ro.audio.pcm.samplerate=48000" >> /system/build.prop
busybox echo "ro.audio.pcm.samplerate=48000" >> /system/build.prop
busybox echo "ro.sound.driver=alsa" >> /system/build.prop
busybox echo "ro.sound.alsa=snd_pcm" >> /system/build.prop
busybox echo "alsa.mixer.playback.master=Speaker" >> /system/build.prop
busybox echo "alsa.mixer.capture.master=Mic" >> /system/build.prop
busybox echo "alsa.mixer.playback.earpiece=Earpiece" >> /system/build.prop
busybox echo "alsa.mixer.capture.earpiece=Mic" >> /system/build.prop
busybox echo "alsa.mixer.playback.headset=Headset" >> /system/build.prop
busybox echo "alsa.mixer.capture.headset=Mic" >> /system/build.prop
busybox echo "alsa.mixer.playback.speaker=Speaker" >> /system/build.prop
busybox echo "alsa.mixer.capture.speaker=Mic" >> /system/build.prop
busybox echo "alsa.mixer.playback.bt.sco=BTHeadset" >> /system/build.prop
busybox echo "alsa.mixer.capture.bt.sco=BTHeadset" >> /system/build.prop
busybox echo "mpq.audio.decode=true" >> /system/build.prop
busybox echo "ro.semc.sound_effects_enabled=true" >> /system/build.prop
busybox echo "ro.semc.xloud.supported=true" >> /system/build.prop
busybox echo "persist.service.xloud.enable=1" >> /system/build.prop
busybox echo "ro.semc.enhance.supported=true" >> /system/build.prop
busybox echo "persist.service.enhance.enable=1" >> /system/build.prop
busybox echo "ro.semc.clearaudio.supported=true" >> /system/build.prop
busybox echo "persist.service.clearaudio.enable=1" >> /system/build.prop
busybox echo "ro.sony.walkman.logger=1" >> /system/build.prop
busybox echo "persist.service.walkman.enable=1" >> /system/build.prop
busybox echo "ro.somc.clearphase.supported=true" >> /system/build.prop
busybox echo "persist.service.clearphase.enable=1" >> /system/build.prop
busybox echo "htc.audio.global.state=0" >> /system/build.prop
busybox echo "htc.audio.lpa.a2dp=0" >> /system/build.prop
busybox echo "htc.audio.global.profile=0" >> /system/build.prop
busybox echo "htc.audio.q6.topology=0" >> /system/build.prop
busybox echo "htc.audio.enable_dmic=1" >> /system/build.prop
busybox echo "persist.htc.audio.pcm.samplerate=48000" >> /system/build.prop
busybox echo "persist.htc.audio.pcm.channels=2" >> /system/build.prop
busybox echo "persist.audio.fluence.mode=endfire" >> /system/build.prop
busybox echo "persist.audio.vr.enable=false" >> /system/build.prop
busybox echo "persist.audio.handset.mic=analog" >> /system/build.prop
busybox echo "htc.audio.swalt.mingain=14512" >> /system/build.prop
busybox echo "htc.audio.swalt.enable=1" >> /system/build.prop
busybox echo "htc.audio.alc.enable=1" >> /system/build.prop
busybox echo "htc.audio.lpa.a2dp=0" >> /system/build.prop
busybox echo "htc.audio.global.state=0" >> /system/build.prop
busybox echo "htc.audio.global.profile=0" >> /system/build.prop
busybox echo "htc.audio.q6.topology=0" >> /system/build.prop
busybox echo "htc.audio.enable_dmic=1" >> /system/build.prop
busybox echo "persist.htc.audio.pcm.samplerate=48000" >> /system/build.prop
busybox echo "persist.htc.audio.pcm.channels=2" >> /system/build.prop
busybox echo "persist.audio.fluence.mode=endfire" >> /system/build.prop
busybox echo "persist.audio.vr.enable=false" >> /system/build.prop
busybox echo "htc.audio.swalt.enable=1" >> /system/build.prop
busybox echo "htc.audio.swalt.mingain=14512" >> /system/build.prop
busybox echo "htc.audio.alc.enable=1" >> /system/build.prop
busybox echo "ro.ril.enable.amr.wideband=1" >> /system/build.prop
busybox echo "End of Tweak" >> /system/build.prop