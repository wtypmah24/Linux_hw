#!/bin/bash

 for i in {1..10}; do
 date +'%H:%M:%S'
 ps -ef | tail -n+2 | wc -l
 sleep 0.5
 done

cat /proc/cpuinfo > file.txt
cat /etc/os-release | grep -w NAME | sed 's/NAME=//g' >> file.txt

 for i in {50..100}; do
 touch $i.txt
 done
