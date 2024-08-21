#!/bin/bash

run_sedSub() {
  sed 's/ /\n/g' $1
}

#! 注意sed中\n并不能直接用于匹配换行符，因为默认情况下sed是逐行处理的
clear_sedSub() {
  # 错误1 sed 's/\n/ /g' $1
  tr '\n' ' ' < "$1" #从第一个参数中将所有换行替换为空格
}