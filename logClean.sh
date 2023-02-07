#!/usr/bin/env bash
# new Env("日志清理")
# cron 59 23 * * * logClean.sh

echo "清理1天前的日志"
ql rmlog 1
echo "删除以下空的文件夹"
find /ql/log -type d -empty
find /ql/log -type d -empty -delete