#!/system/bin/sh

mount -o remount rw /system
sed -i '/<item type="integer" name="effect_manager_id">/s/-1/4/g' /system/customize/ACC/default.xml
sed -i '/<item type="boolean" name="support_harman">/s/true/false/g' /system/customize/ACC/default.xml
sed -i '/<item type="boolean" name="support_boomsound_effect">/s/true/false/g' /system/customize/ACC/default.xml
sed -i '/<item type="boolean" name="support_beats_audio">/s/true/false/g' /system/customize/ACC/default.xml

