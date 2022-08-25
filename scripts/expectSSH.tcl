#!/usr/bin/expect

set SCRIPT_DIR [file dirname $argv0]
set USR        [lindex $argv 0]
set DOMAIN     [lindex $argv 1]
set PW         [lindex $argv 2]

spawn ssh -tt $USR@$DOMAIN

set timeout 2

expect "password" {
    send "$PW\r"
}

interact
