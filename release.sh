#!/bin/bash

echo -e "Please input type of version:"
echo -e "1. patch\n2. minor"
read -p "please choose 1/2: " -t 30 num

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
