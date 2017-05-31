#!/sbin/sh

if [ "`grep ro.support.hw_uasp=true /system/build.prop`" ]; 
then
   :
elif [ -e /system/framework/com.sony.device.jar ]; 
then
   cp -f /tmp/asset/lib/lib_Samsung_Resampler.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_3DPosition_ver107.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_3DRendering_ver102.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_AlbumArt_ver104.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_play_plus_hal_ver126c.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_play_plus_ver127a.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_SRC20k_ver100.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_SRC192_ver205.so /system/lib/
   cp -f /tmp/asset/lib/lib_soundaliveresampler.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundBooster_hal_ver700.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundBooster_ver700.so /system/lib/
   cp -f /tmp/asset/lib/libaudiosa.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungDiamondVoiceExt.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungDiamondVoiceExtSwb.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungeffect.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungpowersound.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungSoundbooster_plus.so /system/lib/
   cp -f /tmp/asset/lib/libSoundAlive_VSP_ver315b_arm.so /system/lib/
   cp -f /tmp/asset/lib/liblgaudioutils.so /system/lib/
   cp -f /tmp/asset/lib/liblgresampler.so /system/lib/
   cp -f /tmp/asset/soundfx/* /system/lib/soundfx/
   cp -f /tmp/asset/huawei/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/huawei/lib/* /system/lib/
   cp -f /tmp/asset/framework/* /system/framework/
   mkdir -p /system/customize
   mkdir -p /system/customize/ACC
   cp -f /tmp/asset/etc/default.xml /system/customize/ACC/
   
elif [ "`grep ro.product.brand=htc /system/build.prop`" ]; 
then
   cp -f /tmp/asset/lib/lib_Samsung_Resampler.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_3DPosition_ver107.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_3DRendering_ver102.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_AlbumArt_ver104.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_play_plus_hal_ver126c.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_play_plus_ver127a.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_SRC20k_ver100.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_SRC192_ver205.so /system/lib/
   cp -f /tmp/asset/lib/lib_soundaliveresampler.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundBooster_hal_ver700.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundBooster_ver700.so /system/lib/
   cp -f /tmp/asset/lib/libaudiosa.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungDiamondVoiceExt.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungDiamondVoiceExtSwb.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungeffect.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungpowersound.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungSoundbooster_plus.so /system/lib/
   cp -f /tmp/asset/lib/libSoundAlive_VSP_ver315b_arm.so /system/lib/
   cp -f /tmp/asset/lib/liblgaudioutils.so /system/lib/
   cp -f /tmp/asset/lib/liblgresampler.so /system/lib/
   cp -f /tmp/asset/sony/framework/* /system/framework/
   cp -f /tmp/asset/sony/lib/* /system/lib/
   cp -f /tmp/asset/framework/* /system/framework/
   cp -f /tmp/asset/sony/soundfx/* /system/lib/soundfx/
   cp -f /tmp/asset/sony/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/soundfx/* /system/lib/soundfx/
   cp -f /tmp/asset/huawei/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/huawei/lib/* /system/lib/
elif [ "`grep ro.product.brand=huawei /system/build.prop`" ]; 
then
   cp -f /tmp/asset/lib/lib_Samsung_Resampler.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_3DPosition_ver107.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_3DRendering_ver102.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_AlbumArt_ver104.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_play_plus_hal_ver126c.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_play_plus_ver127a.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_SRC20k_ver100.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundAlive_SRC192_ver205.so /system/lib/
   cp -f /tmp/asset/lib/lib_soundaliveresampler.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundBooster_hal_ver700.so /system/lib/
   cp -f /tmp/asset/lib/lib_SoundBooster_ver700.so /system/lib/
   cp -f /tmp/asset/lib/libaudiosa.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungDiamondVoiceExt.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungDiamondVoiceExtSwb.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungeffect.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungpowersound.so /system/lib/
   cp -f /tmp/asset/lib/libsamsungSoundbooster_plus.so /system/lib/
   cp -f /tmp/asset/lib/libSoundAlive_VSP_ver315b_arm.so /system/lib/
   cp -f /tmp/asset/lib/liblgaudioutils.so /system/lib/
   cp -f /tmp/asset/lib/liblgresampler.so /system/lib/
   cp -f /tmp/asset/sony/framework/* /system/framework/
   cp -f /tmp/asset/sony/lib/* /system/lib/
   cp -f /tmp/asset/sony/soundfx/* /system/lib/soundfx/
   cp -f /tmp/asset/sony/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/soundfx/* /system/lib/soundfx/
   cp -f /tmp/asset/framework/* /system/framework/
   cp -f /tmp/asset/huawei/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/huawei/lib/* /system/lib/
   mkdir -p /system/customize
   mkdir -p /system/customize/ACC
   cp -f /tmp/asset/etc/default.xml /system/customize/ACC/
elif [ "`grep ro.product.brand=Letv /system/build.prop`" ]; 
then
   cp -f /tmp/asset/framework/* /system/framework/
elif [ -e /system/framework/framework-ext-res/framework-ext-res.apk ]; 
then
   cp -f /tmp/asset/framework/* /system/framework/
elif [ "`grep ro.product.brand=lge /system/build.prop`" ]; 
then
   cp -f /tmp/asset/sony/framework/* /system/framework/
   cp -f /tmp/asset/sony/lib/* /system/lib/
   cp -f /tmp/asset/sony/soundfx/* /system/lib/soundfx/
   cp -f /tmp/asset/sony/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/soundfx/* /system/lib/soundfx/
   cp -f /tmp/asset/huawei/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/huawei/lib/* /system/lib/
   cp -f /tmp/asset/framework/* /system/framework/
   mkdir -p /system/customize
   mkdir -p /system/customize/ACC
   cp -f /tmp/asset/etc/default.xml /system/customize/ACC/
elif [ "`grep ro.product.brand=motorola /system/build.prop`" ]; 
then
   cp -f /tmp/asset/sony/framework/* /system/framework/
   cp -f /tmp/asset/sony/lib/* /system/lib/
   cp -f /tmp/asset/sony/soundfx/* /system/lib/soundfx/
   cp -f /tmp/asset/sony/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/soundfx/* /system/lib/soundfx/
   cp -f /tmp/asset/framework/* /system/framework/
   mkdir -p /system/customize
   mkdir -p /system/customize/ACC
   cp -f /tmp/asset/etc/default.xml /system/customize/ACC/
elif [ -e /system/framework/twframework-res.apk ]; 
then
   cp -f /tmp/asset/sony/framework/* /system/framework/
   cp -f /tmp/asset/huawei/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/huawei/lib/* /system/lib/
   cp -f /tmp/asset/sony/lib/* /system/lib/
   cp -f /tmp/asset/sony/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/sony/soundfx/* /system/lib/soundfx/
   mkdir -p /system/customize
   mkdir -p /system/customize/ACC
   cp -f /tmp/asset/etc/default.xml /system/customize/ACC/
elif [ "`grep ro.product.brand=Leeco /system/build.prop`" ]; 
then
   cp -f /tmp/asset/framework/* /system/framework/
elif [ "`grep ro.build.version.sdk=19 /system/build.prop`" ]; 
then
   cp -f /tmp/asset/framework/* /system/framework/
else
   cp -f /tmp/asset/lib/* /system/lib/
   cp -f /tmp/asset/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/soundfx/* /system/lib/soundfx/
   cp -f /tmp/asset/sony/framework/* /system/framework/
   cp -f /tmp/asset/sony/lib/* /system/lib/
   cp -f /tmp/asset/sony/soundfx/* /system/lib/soundfx/
   cp -f /tmp/asset/sony/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/huawei/vendor/* /system/vendor/lib/
   cp -f /tmp/asset/huawei/lib/* /system/lib/
   cp -f /tmp/asset/framework/* /system/framework/
   mkdir -p /system/customize
   mkdir -p /system/customize/ACC
   cp -f /tmp/asset/etc/default.xml /system/customize/ACC/
fi

## Qualcomm HW effects lib64
## AutoSkip if exist

if [ -e /system/vendor/lib/soundfx/libqcvirt.so ];
then
  :
elif [ -e /system/lib64/soundfx/libeffectproxy.so ];
then
   cp -f /tmp/asset/qualcomm/lib64/* /system/lib64/soundfx/
   cp -f /tmp/asset/qualcomm/vendor64/* /system/vendor/lib64/soundfx/
elif [ -e /system/vendor/lib/soundfx/libqcbassboost.so ];
then
   cp -f /tmp/asset/qualcomm/lib/* /system/lib/
   cp -f /tmp/asset/qualcomm/vendor/* /system/vendodr/lib/soundfx
fi

## For Common Devices to fix bug

if [ "`grep ro.build.version.sdk=24 /system/build.prop`" ] && [ -e /system/vendor/lib/soundfx/libqcvirt.so ] && [ ! -e /system/lib/soundfx/libvolumelistener.so ];
then
  cp -f /tmp/asset/volume/nougat/lib/libvolumelistener.so /system/lib/soundfx
fi
if [ "`grep ro.build.version.sdk=24 /system/build.prop`" ] && [ -e /system/lib64/soundfx/libeffectproxy.so ] && [ ! -e /system/lib64/soundfx/libvolumelistener.so ];
then
  cp -f /tmp/asset/volume/nougat/lib64/libvolumelistener.so /system/lib64/soundfx
fi

if [ "`grep ro.build.version.sdk=23 /system/build.prop`" ] && [ -e /system/vendor/lib/soundfx/libqcvirt.so ] && [ ! -e /system/lib/soundfx/libvolumelistener.so ];
then
  cp -f /tmp/asset/volume/marshmallow/lib/libvolumelistener.so /system/lib/soundfx
fi
if [ "`grep ro.build.version.sdk=23 /system/build.prop`" ] && [ -e /system/lib64/soundfx ] && [ ! -e /system/lib64/soundfx/libvolumelistener.so ];
then
  cp -f /tmp/asset/volume/marshmallow/lib64/libvolumelistener.so /system/lib64/soundfx
fi