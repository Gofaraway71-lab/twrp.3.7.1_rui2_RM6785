#!/system/bin/bash
# This script is needed to automatically set device props.
##************************************************************************##
prjName=$(cat /proc/oplusVersion/prjVersion)
echo $prjName

case $prjName in
    "20682")
        resetprop "ro.product.model" "Realme 7"	
        resetprop "ro.build.name" "RMX2155"
        resetprop "ro.build.product" "RMX2155"
        resetprop "ro.product.device" "RM6785"
        ;;
    *)
        resetprop "ro.product.model" "Realme 7"
        resetprop "ro.build.name" "RMX2151"
        resetprop "ro.build.product" "RMX2151"
        resetprop "ro.product.device" "RM6785"
        ;;
esac

exit 0
