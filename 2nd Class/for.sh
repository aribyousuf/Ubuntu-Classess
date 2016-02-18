#!/bin/bash

#iterate on a list

names='ali asad umer'

for i in $names
do
echo $i
done


#iterate on a Range
echo
echo "Second Loop Started"

for i in {1..10}
do
echo $i
done

#iterate on a Range with increment/decrement
echo
echo "Third Loop Started"

for i in {1..30..2}
do
echo $i
done

#C language Loop
echo
echo "Fourth Loop Started"

for((i=0;i<=10;i++))
do
echo $i
done

