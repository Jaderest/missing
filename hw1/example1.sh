#!/bin/bash

echo "Starting program at $(date)" # Date will be substituted

echo "Running program $0 with $# arguments with pid $$"

for file in $@; do
  grep foo $file > /dev/null 2> /dev/null
  if [[ $? -ne 0 ]]; then
# #? 代表上一个命令的返回值，0代表成功，其他代表失败
    echo "File $file does not have any foobar, adding one"
    echo "# foo" >> $file
# 追加到文件末尾
  fi
done