#!/vendor/bin/sh

model=`grep -aim1 'model:' /dev/block/bootdevice/by-name/LTALabel | sed -e 's/^.*model:[ ]*\([A-Za-z0-9-]*\).*$/\1/I'` 2> /dev/null

case "$model" in
    "XQ-AU42" | "XQ-AU52" )
        setprop vendor.radio.multisim.config dsds;;
    * )
        setprop vendor.radio.multisim.config ss;;
esac
