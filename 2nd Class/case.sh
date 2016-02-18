#!/bin/bash

# case example

echo "enter input"
read a

case $a in
start)
echo "starting...."
;;
stop)
echo "stoping !!!!"
;;
restart)
echo "restarting -----"
;;
*)
echo "don't know"
;;
esac
