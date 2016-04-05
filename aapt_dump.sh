#!/bin/bash
if [ $# -lt 1 ];then
echo "Usage:./aapt_dump.sh <apk_path> <database name> <password>"
exit
fi

/usr/local/android-sdk-linux/build-tools/20.0.0/aapt dump badging $1
