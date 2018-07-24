#!/bin/sh
# 为vultr安装docker

# 1. 安装docker
yum install -y docker

# 2. 启动docker
systemctl start docker
systemctl enable docker

# 3. 安装shadowsocks
docker run -d -p 10101:10101 --name ss --restart unless-stopped -m 256M --memory-swap 512M mritd/shadowsocks -s "-s 0.0.0.0 -p 10101 -m aes-256-cfb -k Zjf@1234 --fast-open"