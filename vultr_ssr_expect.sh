#!/usr/bin/expect
spawn bash ssr.sh
expect "请输入数字"
send "1\r"
expect "(默认: 2333):"
send "10101\r"
expect "(默认: doub.io):"
send "Zjf@1234\r"
expect "(默认: 5. aes-128-ctr):"
send "10\r"
expect "(默认: 2. auth_sha1_v4):"
send "1\r"
expect "(默认: 5. tls1.2_ticket_auth):"
send "1\r"
expect "(默认: 无限):"
send "\r"
expect "(默认: 无限):"
send "\r"
expect "(默认: 无限):"
send "\r"
expect "Is this ok [y/d/N]"
send "y\r"
expect eof
exit
