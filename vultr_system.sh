#!/bin/sh
# 为vultr配置系统信息

# 1. 设置hostname
echo "vultr.hellozjf.com" >/etc/hostname

# 2. 关闭防火墙
systemctl stop firewalld
systemctl disable firewalld

# 3. 配置交换参数，0尽可能使用内存，100尽可能使用交换分区，网上说10比较好
line=`cat -n /etc/sysctl.conf | grep "vm.swappiness" | awk '{print $1}'`
if [ ! $line ]; then
    echo "vm.swappiness = 10" >>/etc/sysctl.conf
else
    sed -i $line'c vm.swappiness = 10' /etc/sysctl.conf
fi

# 4. 安装traceroute
yum install -y traceroute.x86_64

# 5. 安装bbr
wget https://raw.githubusercontent.com/hellozjf/vultr/master/bbr.sh && chmod +x bbr.sh && bash bbr.sh