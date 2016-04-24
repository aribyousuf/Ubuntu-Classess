The idea is that variables are limited to the process they were created in. 
For instance, a script may run another script as one of its commands. 
If we want the variable to be available to the second script then we need to export the variable.

EXAMPLE:
To this first create a script with any name.
(script1.sh) --> my script name
#write this code in the script

var1=hello
var2=bye

#print current value
echo $0 : var1 : $var1, var2 : $var2

#exporting variable "var1"

export $var1
./script2.sh #running script2

#now their value is
echo $0 : var1 : $var1, var2 : $var2

create another script with any name.
(script2.sh) --> my script name
#write this code in the script

#current value
echo $0 : var1 : $var1, var2 : $var2
#changing value
var1=bye
var2=thanks

#note: change permission of both the scripts & run only script1 (it will run script2)

