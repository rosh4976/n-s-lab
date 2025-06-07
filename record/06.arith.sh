#!/bin/bash
while true
do
        echo "menu"
        echo "1.addition"
        echo "2.subtraction"
        echo "3.multiplication"
        echo "4.division"
        echo "5.exit"
        echo "enter your choice"
        read choice
        case "$choice" in
                1)
                        echo "enter first number: "
                        read num1
                        echo "enter second number: "
                        read num2
                        result=$((num1+num2))
                        echo "result:$num1+$num2=$result"
                        ;;
                2)
                        echo "enter first number: "
                        read num1
                        echo "enter second number :"
                        read num2
                        result=$((num1-num2))
                        echo "result:$num1-$num2=$result"
                        ;;
                3)

                        echo "enter first number: "
                        read num1
                        echo "enter second number :"
                        read num2
                        result=$((num1*num2))
                        echo "result:$num1*$num2=$result"
                        ;;
                4)

                        echo "enter first number: "
                        read num1
                        echo "enter second number :"
                        read num2
                        if [ $num2 -eq  0 ]
                        then
                                echo "division by zero is not possible"
                        else
                                result=$((num1/num2))
                                echo "result:$num1/$num2=$result"
                        fi
                        ;;
                5)
                        echo "exiting program .."
                        exit 0
                        ;;
           done



output

rmurs@Murshi MINGW64 ~/roshna
$ ./arith.sh
menu
1.addition
2.subtraction
3.multiplication
4.division
5.exit
enter your choice
1
enter first number:
4
enter second number:
5
result:4+5=9
menu
1.addition
2.subtraction
3.multiplication
4.division
5.exit
enter your choice
2
enter first number:
3
enter second number :
1
result:3-1=2
menu
1.addition
2.subtraction
3.multiplication
4.division
5.exit
enter your choice
3
enter first number:
4
enter second number :
5
result:4*5=20
menu
1.addition
2.subtraction
3.multiplication
4.division
5.exit
enter your choice
4
enter first number:
4
enter second number :
2
result:4/2=2
menu
1.addition
2.subtraction
3.multiplication
4.division
5.exit
enter your choice
6
invalid option try again
menu
1.addition
2.subtraction
3.multiplication
4.division
5.exit
enter your choice
5
exiting program ..
