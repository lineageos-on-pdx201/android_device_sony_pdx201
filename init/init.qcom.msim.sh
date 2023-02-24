#!/vendor/bin/sh

model=`grep -am1 '[Mm][Oo][Dd][Ee][Ll]:' /dev/block/bootdevice/by-name/LTALabel | sed -e 's/^.*[Mm][Oo][Dd][Ee][Ll]:[ ]*\([A-Za-z0-9-]*\).*$/\1/'` 2> /dev/null

case "$model" in
    "XQ-AU42" | "XQ-AU52" )
        setprop vendor.radio.multisim.config dsds;;
    * )
        setprop vendor.radio.multisim.config ss;;
esac
