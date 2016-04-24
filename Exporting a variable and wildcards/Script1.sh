var1=hello
var2=bye

#print current value
echo $0 : var1 : $var1, var2 : $var2

#exporting variable "var1"

export var1
./Script2.sh #running script2

#now their value is
echo $0 : var1 : $var1, var2 : $var2

