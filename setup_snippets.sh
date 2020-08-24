#! /bin/bash

# 时间
date=`date '+%Y%m%d'`
date_time=`date '+%Y%m%d-%H%M%S'`

#对当本机的代码片段备份
mv ~/Library/Developer/Xcode/UserData/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets-${date_time}.backup

#删除本机的所有老的代码片段备份
# rm target_dirc

SRC_HOME=`pwd`

#制作文件夹替身
#ln -s ${SRC_HOME}/CodeSnippets target_dirc

#替换所有老的代码片段
cp -a ${SRC_HOME}/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets

#添加上次旧存在的
cp -R ~/Library/Developer/Xcode/UserData/CodeSnippets-${date_time}.backup/* ~/Library/Developer/Xcode/UserData/CodeSnippets

echo "添加代码片段完成!"

