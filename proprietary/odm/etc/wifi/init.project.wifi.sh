#Sukshata@Wifi.BDF,NA 2022/01/21
#load oneplus bdf files.
hw_version=`getprop ro.boot.hw_version`
rf_version=`getprop ro.boot.rf_version`
tempstr=`getprop persist.vendor.oem.wifi.chain`

if [ "$tempstr" -eq "1" ]
then
    cp /odm/etc/wifi/2bdwlan0.t0a /mnt/vendor/persist/bdwlan.bin
    echo "copied 2bdwlan0.t0a successfully" > /dev/kmsg
elif [ "$tempstr" -eq "2" ]
then
    cp /odm/etc/wifi/2bdwlan1.t0a /mnt/vendor/persist/bdwlan.bin
    echo "copied 2bdwlan1.t0a successfully" > /dev/kmsg
else
    cp /odm/etc/wifi/2bdwlan.t0a /mnt/vendor/persist/bdwlan.bin
    echo "copied 2bdwlan.t0a successfully" > /dev/kmsg
fi
#end
