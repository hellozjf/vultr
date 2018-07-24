#!/bin/sh
# 安装ssr

wget https://softs.fun/Bash/ssr.sh && chmod +x ssr.sh
yum install -y expect
wget https://raw.githubusercontent.com/hellozjf/vultr/master/vultr_ssr_expect.sh && chmod +x vultr_ssr_expect.sh && ./vultr_ssr_expect.sh