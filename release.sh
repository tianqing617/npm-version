#!/bin/bash

# 选择版本
echo -e "Please input type of version:"
echo -e "1. patch\n2. minor"
read -p "please choose 1/2: " -t 30 num

# 打包
npm run lib

# 发版
# npm publish

# 提交代码
git add -A
git commit -m "chore: library"

# 升级版本
case $num in
  "1")
    npm version patch
    ;;
  "2")
    npm version minor
    ;;
  *)
    echo "your choose is error"
    ;;
esac

# 推送代码
git push origin master
