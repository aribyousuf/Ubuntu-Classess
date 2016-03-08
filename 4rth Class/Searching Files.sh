#!/bin/bash


s=abc.sh # file to be search

# Scenario 1:file exists and is a directory.

if [ -d $s ] 
then
echo "file found"
else
echo "file not found"
fi

******************
s=abc.sh # file to be search

# Scenario 2:file exists.
 
if [ -e $s ]
then
echo "file found"
else
echo "file not found"
fi

*******************

s=abc.sh # file to be search

# Scenario 3:file exists and read permission is granted.

if [ -r $s ]
then
echo "file found"
else
echo "file not found"
fi

*******************

s=abc.sh # file to be search

# Scenario 4:file exists and its size is greater than zero (i.e its not empty).

if [ -s $s ]
then
echo "file found"
else
echo "file not found"
fi

*******************

s=abc.sh # file to be search

# Scenario 5:file exists and write permission is granted.

if [ -w $s ]
then
echo "file found"
else
echo "file not found"
fi

*******************

s=abc.sh # file to be search

# Scenario 6:file exists and execute permission is granted.

if [ -x $s ]
then
echo "file found"
else
echo "file not found"
fi
