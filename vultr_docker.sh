#!/bin/sh
# 为vultr安装docker

# 1. 安装docker
yum install -y docker

# 2. 启动docker
systemctl start docker
systemctl enable docker

# 3. 安装shadowsocks
docker run -d -p 10101:10101 --name ss --restart unless-stopped mritd/shadowsocks -s "-s 0.0.0.0 -p 10101 -m aes-256-cfb -k Zjf@1234 --fast-open"

# 4. 安装vsftpd
docker run -d -p 20:20 -p 21:21 -p 21100-21110:21100-21110 --name vsftpd --restart unless-stopped -v /root/ftp:/home/vsftpd/hellozjf -e FTP_USER=hellozjf -e FTP_PASS=Zjf@1234 fauria/vsftpd
