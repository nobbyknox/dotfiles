#!/bin/sh

say_hello()
{
    echo "Start of hello script"
    echo "1: $1"
    echo "2: $2"
    echo "3: $3"
    echo "4: $4"
    echo "all: $*"
}

fl()
{
    ls -lh --color $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX
}

fla()
{
    ls -lah --color $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX
}

top_5()
{
    history | awk '{print $2}' | sort | uniq -c | sort -nr | head -5
}

net_mon()
{
    nload -a 10 -u M
}

net_scan()
{
    sudo nmap -sP 192.168.10.0/24
}
