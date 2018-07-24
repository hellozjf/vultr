#!/bin/sh
# 为vultr配置系统信息

# 1. 设置hostname
echo "vultr.hellozjf.com" >/etc/hostname

# 2. 关闭防火墙
systemctl stop firewalld
systemctl disable firewalld

# 3. 配置交换分区
fallocate -l 1G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
if [ ! -f "/etc/fstab_backup" ]; then
    cp /etc/fstab /etc/fstab_backup
    echo "/swapfile   swap    swap    sw  0   0" >>/etc/fstab	
fi

# 4. 配置交换参数，0尽可能使用内存，100尽可能使用交换分区，网上说10比较好
line=`cat -n /etc/sysctl.conf | grep "vm.swappiness" | awk '{print $1}'`
if [ ! $line ]; then
    echo "vm.swappiness = 10" >>/etc/sysctl.conf
else
    sed -i $line'c vm.swappiness = 10' /etc/sysctl.conf
fi

# 5. 安装traceroute
yum install -y traceroute.x86_64

# 6. 安装bbr
wget https://raw.githubusercontent.com/hellozjf/vultr/master/bbr.sh && chmod +x bbr.sh && bash bbr.sh

# 7. 修改root的密码
echo root:Zjf@12340z3j@3f8 | chpasswd

# 8. 安装net-tools
yum install -y net-tools