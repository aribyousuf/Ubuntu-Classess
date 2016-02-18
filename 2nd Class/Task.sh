#!/bin/bash


read a
read b
read c


for((i=$b; i<=$c; i++))
do
let d=$a*$i
echo $a x $i = $d
done
