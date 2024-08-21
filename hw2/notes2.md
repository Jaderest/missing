## 注意source指令和bash的区别
```bash
# 在当前进程的shell中执行.sh命令
source macro.sh
# 在子进程中执行.sh
bash macro.sh
# or use shebang
./macro.sh
```

## sed: stream editor
- 事实上能够取最后一行的工具有特别多
  - tail -n 1 \<filename\>
    - 取最后一行
  - sed -n '$p' \<filename\>
    - -n: 不输出模式空间
    - $: 匹配最后一行
    - p: 打印
  - tac \<filename\> | head -n 1
    - 倒序排列并取倒序后的第一行
    - tac = cat 的倒序版（小彩蛋啊）
- sed用法举例
  - sed 's/old/new/g' \<filename\>
    - 将文件中的old替换为new
    - s代表substitute
    - g代表global，即替换所有匹配
    - 把g删掉就只替换第一个匹配
    - sed默认情况下一次只处理一行