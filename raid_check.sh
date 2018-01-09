#!bin/bash

status=`cat /proc/mdstat | grep -E "level 5" | awk '{print $12}'`
raid="[UUUU]"


if [ "$status" == "$raid" ]; then
        echo "Raid jest OK" $status
else
        echo "Wystapil problem z Raidem" $status
fi

