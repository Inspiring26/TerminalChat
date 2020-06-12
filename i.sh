# config
# 这五项是必填内容，尤其thisNumber务必分别填写正确
# 分别填写两个机器的用户名和ip，以{用户名}@{ip}方式表示,alias后是消息记录中的别名
targetip1="h@192.168.2.38"
alias1="h"

targetip2="huangyong@192.168.3.109"
alias2="mba" 
# 选择本机是1还是2
thisNumber="1"


# main
if [ $thisNumber = "1" ]
then
    targetip=$targetip2
    alias=$alias1
else
    targetip=$targetip1
    alias=$alias2
fi

scp -q $targetip:~/Downloads/infoswap.txt .
if [ $# != 0 ]
then
    mytime=$(date "+%m-%d %H:%M:%S")
    if [ "$1" == "-f" ]
    then
        scp -q $2 $targetip:~/Downloads/
        echo "" >> infoswap.txt
        echo "$alias($mytime):" >> infoswap.txt
        echo "scp $2 complete." >> infoswap.txt
    else

        echo "" >> infoswap.txt
        echo "$alias($mytime):" >> infoswap.txt
        echo "$1" >> infoswap.txt
    fi
fi
scp -q infoswap.txt $targetip:~/Downloads/
clear
tail -n 11 infoswap.txt

