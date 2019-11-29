#!/bin/bash
# Program: automatedDeploymentGo
# Author 王丽兵
# Email  iamwanglibing@qq.com
# 输出带颜色的字
## blue to echo 
function blueEcho(){
    echo -e "\033[34m[ $1 ]\033[0m"
}


## green to echo 
function greenEcho(){
    echo -e "\033[32m[ $1 ]\033[0m"
}

## Error to warning with blink
function bredEcho(){
    echo -e "\033[31m\033[01m\033[05m[ $1 ]\033[0m"
}

## Error to warning with blink
function byellowEcho(){
    echo -e "\033[33m\033[01m\033[05m[ $1 ]\033[0m"
}

## Error
function bredEcho(){
    echo -e "\033[31m\033[01m[ $1 ]\033[0m"
}

## warning
function byellowEcho(){
    echo -e "\033[33m\033[01m[ $1 ]\033[0m"
}