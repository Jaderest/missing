#!/bin/bash

export MACRO_PATH="$HOME/missing/hw2/"

macro() {
  # check if the directory exists
  mkdir -p "$MACRO_PATH"

  # current directory
  current_dir=$(pwd)

  # copy the file to the directory
  echo "$current_dir" >> "${MACRO_PATH}"/macro.txt
}

polo() {
  #todo 记得最后要cd到那个目录
  cd "$MACRO_PATH"
  #TODO: 查手册看tail的返回值，然后如果没有文件，则提示一下未使用macro，有返回值则输出or进入目录
  
}