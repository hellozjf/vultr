#!/usr/bin/expect
spawn bash bbr.sh
expect "Press any key to start"
send "\r"
set timeout 600 
expect "Do you want to restart system?"
send "n\r"
set timeout 10
expect eof
exit
