#!/bin/sh

#do every half hour
while [ true ]; do
sleep 1800
filename=`date -d "today" +"%Y%m%d_%H%M%S"`
echo $filename
adb shell stm32_unittest_test >> test_resault/$filename.txt
done
