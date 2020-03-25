#!/bin/bash

save=./world/
date=$(date)

year=${date:24:4}

mon=${date:4:3}
#把月份转换为数字
if [ $mon == Jan ]
then
	month=01
elif [ $mon == Feb ]
then
	month=02
elif [ $mon == Mar ]
then
	month=03
elif [ $mon == Apr ]
then
	month=04
elif [ $mon == May ]
then
	month=05
elif [ $mon == Jun ]
then
	month=06
elif [ $mon == Jul ]
then
	month=07
elif [ $mon == Aug ]
then
	month=08
elif [ $mon == Sep ]
then
	month=09
elif [ $mon == Oct ]
then
	month=10
elif [ $mon == Nov ]
then
	month=11
elif [ $mon == Dec ]
then
	month=12
fi

day_or_not=${date:8:1}
#把1~9日加上0
if [ $day_or_not == 1 || $day_or_not == 2 || $day_or_not == 3 ]
then
	day=${date:8:2}
else
	day="0${date:9:1}"
fi

hour=${date:11:2}
minute=${date:14:2}

echo 开始备份...
zip -r world_$year-$month-$day-$hour-$minute.zip $save
echo 备份完成，已保存至world_$year-$month-$day-$hour-$minute.zip
