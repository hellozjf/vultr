#!/bin/sh
# 初始化vultr

# 1. 配置基础信息
wget https://raw.githubusercontent.com/hellozjf/vultr/master/vultr_system.sh && chmod +x vultr_system.sh && bash vultr_system.sh

# 2. 安装docker
wget https://raw.githubusercontent.com/hellozjf/vultr/master/vultr_docker.sh && chmod +x vultr_docker.sh && bash vultr_docker.sh

# 3. 重启系统
reboot