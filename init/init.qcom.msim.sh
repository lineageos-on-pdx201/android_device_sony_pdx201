#!/vendor/bin/sh

model=`sed -e '/[Mm][Oo][Dd][Ee][Ll]: /!d' -e 's/^.*[Mm][Oo][Dd][Ee][Ll]: \([A-Za-z0-9-]*\).*$/\1/' -e '/^$/d' /dev/block/bootdevice/by-name/LTALabel` 2> /dev/null

case "$model" in
    "XQ-AU42" | "XQ-AU52" )
        setprop vendor.radio.multisim.config dsds;;
    * )
        setprop vendor.radio.multisim.config ss;;
esac
