if [ -z "$1" ]
then
echo "Введите число!!!"
exit
elif [ $(($1/1)) == 0 ]
then
echo "$1 Не число или ноль!!!"
exit
elif [ "$1" -le 0 ]
then
echo "$1 Отрицательное число!!!"
exit
fi
n=1
g=0
k=$(($1/2))
s="Число $1 делится на: 1"
until [ $n -gt $k ]
do
n=$(($n+1))
if [ "$2" != "false" ]
then
echo -e "\r[$n].$s\c"
else
echo -e "\r$n\c"
fi
a=$(($1/$n*$n))
if [ $a == $1 ]
then
g=$(($g+1))
s="$s, $n"
fi
done
if [ $g == 0 ]
then
echo "$1 - Простое число" > $1.txt
echo -e "\r$1 - Простое число              "
else
echo "$s, $1" > $1.txt
echo -e "\r$s, $1   "
fi






