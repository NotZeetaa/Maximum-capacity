#!/system/bin/sh
# Author: NotZeetaa (Github)

# Variables
CHARGE_FULL=$(cat /sys/class/power_supply/battery/charge_full)
CHARGE_FULL_DESIGN=$(cat /sys/class/power_supply/battery/charge_full_design)
DIFFERENCE=$(( $CHARGE_FULL_DESIGN - $CHARGE_FULL ))
CAPACITY=$(( $CHARGE_FULL / 1000 ))
CAPACITY_DESIGN=$(( $CHARGE_FULL_DESIGN / 1000 ))

echo -e "\nDesign max capacity: $CAPACITY_DESIGN mAh"
echo "Current max cappacity: $CAPACITY mAh"
echo -e "Lost: $(( $DIFFERENCE / 1000 )) mAh\n"


