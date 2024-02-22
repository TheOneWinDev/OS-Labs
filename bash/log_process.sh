#!/bin/bash

echo "Введите PID процесса:"
read pid

ps -p $pid -o pid,cmd,pmem,user,etime | tee /var/log/Kozlov.log