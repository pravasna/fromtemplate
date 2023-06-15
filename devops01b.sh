#!/bin/bash

help() {
    echo "Usage:"
    echo "eg-1: sh devops01b.sh -volumes"
    echo "eg-2: sh devops01b.sh -cpu"
    echo "eg-3: sh devops01b.sh -ram"
    echo "eg-3: sh devops01b.sh -network"
    echo "eg-3: sh devops01b.sh -all"
}

if [ $# -eq 0 ]; then
    help
elif [[ $1 == "-volumes" ]]; then
    df -h
elif [[ $1 == "-cpu" ]]; then
    nproc && cat /proc/cpuinfo
elif [[ $1 == "-ram" ]]; then
    free -m
elif [[ $1 == "-network" ]]; then
    curl ifconfig.me && ifconfig -a
elif [[ $1 == "-all" ]]; then
    df -h && nproc && cat /proc/cpuinfo && curl ifconfig.me && ifconfig -a
fi

