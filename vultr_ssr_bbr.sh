#!/bin/sh
# 安装ssr和bbr

wget https://raw.githubusercontent.com/hellozjf/doubi/master/ssr.sh && chmod +x ssr.sh
wget https://raw.githubusercontent.com/hellozjf/across/master/bbr.sh && chmod +x bbr.sh
yum install -y expect
wget https://raw.githubusercontent.com/hellozjf/vultr/master/vultr_ssr_expect.sh && chmod +x vultr_ssr_expect.sh && ./vultr_ssr_expect.sh
wget https://raw.githubusercontent.com/hellozjf/vultr/master/vultr_bbr_expect.sh && chmod +x vultr_bbr_expect.sh && ./vultr_bbr_expect.sh