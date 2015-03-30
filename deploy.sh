#!/bin/sh 
# 出错提示测试 
#\x1b(八进制为：\033)[显示方式;前景色;背景色m  
#显示方式:0（默认值）、1（高亮）、22（非粗体）、4（下划线）、24（非下划线）、5（闪烁）、25（非闪烁）、7（反显）、27（非反显）  
#前景色:30（黑色）、31（红色）、32（绿色）、 33（黄色）、34（蓝色）、35（洋红）、36（青色）、37（白色）  
#背景色:40（黑色）、41（红色）、42（绿色）、 43（黄色）、44（蓝色）、45（洋红）、46（青色）、47（白色）  
# 
#\033[0m 默认  
#\033[1;32;40m 绿色  
#033[1;31;40m 红色  

COLOR_G="\x1b[0;32m"  # green 
COLOR_R="\x1b[1;31m"  # red 
RESET="\x1b[0m"

STR_ERR="[Oops!! Error occurred!! Please see the message upside!!]"
STR_OK="[Job done!]"

MSG_ERR=$COLOR_R$STR_ERR$RESET
MSG_OK=$COLOR_G$STR_OK$RESET

myexit()
{
if [ $1 -eq "1" ]
then
    echo $MSG_ERR ; 
    exit ; 
fi
}

echo "start compile..."
harp compile
ret=$?
myexit $ret
echo "finish compile..."
cd ../npmsafe.github.io
ret=$?
myexit $ret
echo "start update..."
git pull
ret=$?
myexit $ret
echo "start rm old file..."
GLOBIGNORE=.git
rm -vrf *
unset GLOBIGNORE
ret=$?
myexit $ret
echo "start cp new file..."
cp -r ../www.npmsafe.com/www/ ./
ret=$?
myexit $ret
echo $MSG_OK