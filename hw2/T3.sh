#!/usr/bin/env bash

# 初始化计数器
count=0

# 日志文件
log_file="T3.log"

# 清空日志文件
> "$log_file"

# 循环运行目标脚本，直到它出错
while true; do
    # 运行目标脚本并捕获输出到日志文件
    # 2>&1 意味着将标准错误重定向到标准输出，这样就可以将两者一起写入日志文件
    ./T3_target.sh >> "$log_file" 2>&1
    
    # 检查目标脚本的退出状态
    if [ $? -ne 0 ]; then
        echo "Script failed after $((count + 1)) attempts."
        break
    fi

    # 增加计数器
    count=$((count + 1))
done

# 输出日志文件内容
echo "Log file content:"
cat "$log_file"
