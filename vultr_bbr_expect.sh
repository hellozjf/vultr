#!/usr/bin/expect
set timeout 600 
spawn bash bbr.sh
expect "Press any key to start"
send "\r"
expect "Do you want to restart system?"
send "n\r"
expect eof
exit
