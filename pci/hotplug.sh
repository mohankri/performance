#!/bin/bash
#
# for x4-4, x4-8, x5-4, x5-8
#lshw -businfo -class bridge
#BUSES='00 20 40 60 80 a0 c0 e0'
BUSES='00'
#DEV_FUNCS='02.0 03.2'
DEV_FUNCS='02.0 02.2'

echo "Remove all child devices at first"
for BUS in $BUSES; do
    for DEV_FUNC in $DEV_FUNCS; do
      NAME=0000:"$BUS":"$DEV_FUNC"
      LINE=`/usr/bin/lspci -nn -s $NAME | wc -l`
      if [ $LINE -eq 0 ]; then
        continue
      fi
      echo $NAME
      NA=`find /sys/devices/pci0000:"$BUS"/"$NAME"/*/remove -name "remove"`
      for N in $NA; do
        echo $N
        echo -n 1 > "$N"
        sleep 1s
      done
    done
done

sleep 5s

echo "Clear bridge mmio BARs and busn"
for BUS in $BUSES; do
    for DEV_FUNC in $DEV_FUNCS; do
      NAME=0000:"$BUS":"$DEV_FUNC"
      LINE=`/usr/bin/lspci -nn -s $NAME | wc -l`
      if [ $LINE -eq 0 ]; then
        continue
      fi
      echo $NAME
      /usr/bin/setpci -s $NAME 0x20.l=0
      /usr/bin/setpci -s $NAME 0x24.l=0
      /usr/bin/setpci -s $NAME 0x28.l=0
      /usr/bin/setpci -s $NAME 0x2c.l=0
      /usr/bin/setpci -s $NAME 0x18.w=0
      /usr/bin/setpci -s $NAME 0x1a.b=0
      N=`find /sys/devices/pci0000:"$BUS"/"$NAME"/remove -name "remove"`
      echo $N
      echo -n 1 > "$N"
      sleep 1s
    done
done
