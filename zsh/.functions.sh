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
    ls -lh $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX
}

fla()
{
    ls -lah $1 $2 $3 $4 $5 $6 $7 $8 $9 | less -ieFX
}
