#!/bin/bash
echo "enter the number of elements:"
read n
declare -a arr
echo "enter the elements:"
for ((i=0;i<n;i++))
do
        read arr[i]
done
echo "the array elements are:"
for element in "${arr[@]}"
do
        echo  -n "$element "
done


output
rmurs@Murshi MINGW64 ~/roshna
$ ./displayarray.sh
enter the number of elements:
5
enter the elements:
3
44
5
65
6
the array elements are:
3 44 5 65 6
