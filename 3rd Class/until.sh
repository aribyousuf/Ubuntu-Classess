#!/bin/bash



counter=15
until [ $counter -gt 35 ]
do
echo $counter
((counter++))
done
echo All done
