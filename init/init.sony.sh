#!/vendor/bin/sh

model=`grep -aim1 'model:' /dev/block/bootdevice/by-name/LTALabel | sed -e 's/^.*model:[ ]*\([A-Za-z0-9-]*\).*$/\1/I'` 2> /dev/null

# SKU
case "$model" in
    "XQ-AU51" )
        setprop ro.vendor.somc.model XQ-AU51;;
    "XQ-AU52" )
        setprop ro.vendor.somc.model XQ-AU52;;
esac

# Radio
case "$model" in
    "XQ-AU52" )
        setprop vendor.radio.multisim.config dsds;;
    * )
        setprop vendor.radio.multisim.config ss;;
esac
