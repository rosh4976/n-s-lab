#!/bin/bash
echo "enter the filename:"
read filename
echo "enter the old string"
read old
echo "enter the new string"
read new

sed -i "s/${old}/${new}/g" "$filename"

echo "updated content of '$filename':"
echo "----------------------------"
cat "$filename"
echo "---------------"

output
rmurs@Murshi MINGW64 ~/roshna
$ ./replacestring.sh
enter the filename:
displayarray.sh
enter the old string
echo
enter the new string
rrr
updated content of 'displayarray.sh':
----------------------------
#!/bin/bash
rrr "enter the number of elements:"
read n
declare -a arr
rrr "enter the elements:"
for ((i=0;i<n;i++))
do
        read arr[i]
done
rrr "the array elements are:"
for element in "${arr[@]}"
do
        rrr  -n "$element "
done


---------------
./replacestring.sh: line 16: /c/Users/rmurs: Is a directory
./replacestring.sh: line 17: /c/Users/rmurs: Is a directory

