#!/bin/bash

read a

if [ $a -lt 50 ]
then
echo $a is smaller number
else
echo $a is bigger number
fi
echo 

#if elif else ladder
echo "Second If started"
read b
if [ $b -lt 9 ]
then
echo "$b is a child"
elif [ $b -ge 9 ] && [ $b -le 13 ]
then
echo "$b is Teenager"
else
echo "$b is elder"
fi
echo

#&& and || operator
echo "Third Case started"
echo "Enter Username"
read username
echo "Enter Password"
read password
if [ $username == "user" ] && [ $password == "user" ]
then 
echo "Login Successful"
elif [ $username == "user" ] || [ $password == "user" ]
then 
echo "username/password is inccorrect"
else
echo "Both are incorrect"
fi


