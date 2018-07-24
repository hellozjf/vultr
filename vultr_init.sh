#!/bin/sh
# 初始化vultr

# 1. 配置基础信息
wget https://raw.githubusercontent.com/hellozjf/vultr/master/vultr_system.sh && chmod +x vultr_system.sh && bash vultr_system.sh

# 2. 安装docker（小于1G内存的机器别安装docker，否则系统会出问题）
# wget https://raw.githubusercontent.com/hellozjf/vultr/master/vultr_docker.sh && chmod +x vultr_docker.sh && bash vultr_docker.sh

# 3. 安装ssr和bbr
wget https://raw.githubusercontent.com/hellozjf/vultr/master/vultr_ssr_bbr.sh && chmod +x vultr_ssr_bbr.sh && bash vultr_ssr_bbr.sh

# 4. 清除所有无用的文件
rm -rf *

# 5. 重启系统
reboot