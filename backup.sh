#!/bin/bash

##############
#本脚本由Lee编写，用于在Linux系统上一键备份Minecraft服务器存档并保存为.zip文件
#使用方法：将本脚本放置于world同一文件夹下，输入./backup.sh即可开始备份
#如果遇到Permission denied，请输入命令sudo chmod a+x backup.sh来给予本脚本执行权限，或者使用bash backup.sh来运行此脚本
##############

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
day=${date:8:2}
hour=${date:11:2}
minute=${date:14:2}
echo 开始备份...
zip -r world_$year-$month-$day-$hour-$minute.zip $save
echo 备份完成，已保存至world_$year-$month-$day-$hour-$minute.zip