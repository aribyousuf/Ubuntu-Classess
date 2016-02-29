#!/bin/bash

echo 1st Format:
names=("a cat" "a fish" "a duck")

for var in ${names[*]}
do
echo $var
done


echo 2nd Format:
names=("a cat" "a fish" "a duck")

for var in ${names[@]}
do
echo $var
done

echo 3rd Format:
names=("a cat" "a fish" "a duck")

for var in "${names[*]}"
do
echo $var
done

echo 4rth Format:
names=("a cat" "a fish" "a duck")

for var in "${names[@]}"
do
echo $var
done
