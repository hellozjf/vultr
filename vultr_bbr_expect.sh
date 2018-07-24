#!/usr/bin/expect
spawn bash bbr.sh
expect "Press any key to start"
send "\r"
expect eof
exit
