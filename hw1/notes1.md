### bash 也支持控制流关键字、函数、变量等等
- ```bash
  foo=bar
  echo "$foo"
  echo '$foo'
  ```
- ```bash
  if [ "$foo" = "bar" ]; then
    echo "foo is bar"
  else
    echo "foo is not bar"
  fi
  ```
- ```bash
  mcd() {
    mkdir -p "$1"
    cd "$1"
  }
  ```
- bash 中的变量
  - $0: 脚本名
  - $1, $2, ... : 脚本的参数，$1 是第一个参数
  - $@: 所有参数
  - $#: 参数个数
  - $?: 上一个命令的返回值
  - \$$: 当前脚本的进程识别码
  - !!: 完整的上一个命令
  - example1: 见本文件夹下example1.sh
