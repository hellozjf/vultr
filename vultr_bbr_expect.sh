#!/usr/bin/expect
spawn bash bbr.sh
expect "Press any key to start"
send "\r"
expect "Do you want to reboot?"
send "n\r"
expect eof
exit
