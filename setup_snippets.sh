#! /bin/bash

#对当本机的代码片段备份
mv ~/Library/Developer/Xcode/UserData/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets.backup

#删除本机的所有老的代码片段备份
# rm ~/Library/Developer/Xcode/UserData/CodeSnippets

SRC_HOME=`pwd`

#制作文件夹替身
#ln -s ${SRC_HOME}/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets

#替换所有老的代码片段
cp -a ${SRC_HOME}/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets

echo "添加代码片段完成!"

