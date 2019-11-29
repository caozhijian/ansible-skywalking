#!/bin/bash
# Program: 创建 Role
# Author iamwanglibing@qq.com
source color.sh

# 输出帮助
echoHelp(){
    blueEcho "使用方法："
    blueEcho "createRole.sh <roleName>"
    blueEcho "roleName: role名字，不可为空"
}

# 在当前目录创建 Role
createRoleInCurrentPath(){
    mkdir -p roles/$1
    mkdir -p roles/$1/defaults
    touch roles/$1/defaults/main.yml
    mkdir -p roles/$1/files
    mkdir -p roles/$1/handlers
    touch roles/$1/handlers/main.yml
    mkdir -p roles/$1/meta
    touch roles/$1/meta/main.yml
    mkdir -p roles/$1/tasks
    touch roles/$1/tasks/main.yml
    # mkdir -p roles/$1/tasks/files
    mkdir -p roles/$1/templates
    touch roles/$1/README.md
    mkdir -p roles/$1/tests
    touch roles/$1/tests/inventory.yml 
    touch roles/$1/tests/test.yml
    mkdir -p roles/$1/vars
    touch roles/$1/vars/main.yml
    greenEcho "创建 Role 成功"
}

if [[ $# == "" ]]
then
    echoHelp
else
    createRoleInCurrentPath $1
fi
