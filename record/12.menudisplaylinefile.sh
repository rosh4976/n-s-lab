#!/bin/bash
while true
do
        echo "-------"
        echo "menu"
        echo "1.display the lines of a file in reverse order"
        echo "2.list all files in a directory"
        echo "3.exit"
        echo "enter your choice:"
        read choice
        case $choice in
                1)
                        echo "enter filename"
                        read filename
                        if [ -f "$filename" ]
                        then
                                echo "line is in reverse order:"
                                tac "$filename"
                        else
                                echo "error:file '$filename' not found"
                        fi
                        ;;
                2)

                        echo "enter the directory path:"
                        read dirname
                        if [ -d "$dirname" ]
                        then
                                echo "files in directory:'$dirname':"
                                ls -l "$dirname"
                        else
                                echo "error:directory '$dirname' not found"
                        fi
                        ;;
                3)
                        echo "exiting program.."
                        exit 0
                        ;;
                *)
                        echo "invalid choice try again.."
                        ;;
        esac
        echo " "
done



output
rmurs@Murshi MINGW64 ~/roshna
$ ./menu.sh
-------
menu
1.display the lines of a file in reverse order
2.list all files in a directory
3.exit
enter your choice:
1
enter filename
array.sh
line is in reverse order:

done
        echo -n "$element "
do
for element in "${arr[@]}"
echo "the elements of the array:"
done
        read arr[i]
do
for ((i=0;i<n;i++))

echo "enter the elements:"

declare -a arr

read n
echo " enter the number of elements:"
#!/bin/bash

-------
menu
1.display the lines of a file in reverse order
2.list all files in a directory
3.exit
enter your choice:
2
enter the directory path:
roshna
error:directory 'roshna' not found

-------
menu
1.display the lines of a file in reverse order
2.list all files in a directory
3.exit
enter your choice:
2
enter the directory path:
/c/users/rmurs/roshna
files in directory:'array.sh':
total 29
-rwxr-xr-x 1 rmurs 197609 1282 Jun  7 20:20 arith.sh
-rwxr-xr-x 1 rmurs 197609  235 Jun  8 20:55 array.sh
-rwxr-xr-x 1 rmurs 197609  186 Jun  7 21:08 circlearea.sh
-rwxr-xr-x 1 rmurs 197609  361 Jun  8 21:20 count.sh
-rwxr-xr-x 1 rmurs 197609  379 Jun  8 21:11 countlinewordslines.sh
-rwxr-xr-x 1 rmurs 197609  197 Jun  7 14:39 currentdate.sh
-rwxr-xr-x 1 rmurs 197609  255 Jun  7 14:47 date.sh
-rwxr-xr-x 1 rmurs 197609  230 Jun  8 20:55 displayarray.sh
-rwxr-xr-x 1 rmurs 197609  131 Jun  7 15:02 fact.sh
-rwxr-xr-x 1 rmurs 197609  127 Jun  7 15:08 factorial.sh
-rwxr-xr-x 1 rmurs 197609  169 Jun  7 15:44 fib.sh
-rwxr-xr-x 1 rmurs 197609  182 Jun  7 17:42 fibonacci.sh
-rwxr-xr-x 1 rmurs 197609  774 Jun  8 21:43 menu.sh
-rwxr-xr-x 1 rmurs 197609  204 Jun  7 18:50 norev.sh
-rwxr-xr-x 1 rmurs 197609  202 Jun  7 20:48 pal.sh
-rwxr-xr-x 1 rmurs 197609  191 Jun  7 20:36 palindrome.sh
-rwxr-xr-x 1 rmurs 197609  231 Jun  7 17:50 prime.sh
-rwxr-xr-x 1 rmurs 197609  241 Jun  7 18:30 primenumbers.sh
-rwxr-xr-x 1 rmurs 197609  191 Jun  7 19:38 reversenumber.sh
-rwxr-xr-x 1 rmurs 197609  642 Jun  8 14:23 validatepassword.sh

-------
menu
1.display the lines of a file in reverse order
2.list all files in a directory
3.exit
enter your choice:
3
exiting program..


