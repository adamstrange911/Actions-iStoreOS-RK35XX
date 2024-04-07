#!/bin/bash
#===============================================
# Description: DIY script
# File name: diy-script.sh
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#===============================================

# 修改版本为编译日期，数字类型。
date_version=$(date +"%Y%m%d%H")
echo $date_version > version

# 为iStoreOS固件版本加上编译作者
sed -i "s/DISTRIB_DESCRIPTION.*=.*/DISTRIB_DESCRIPTION='%D %V $date_version by xiaomeng9597'/g" package/base-files/files/etc/openwrt_release
sed -i "s/OPENWRT_RELEASE.*=.*/OPENWRT_RELEASE=\"%D %V $date_version by xiaomeng9597\"/g" package/base-files/files/usr/lib/os-release
