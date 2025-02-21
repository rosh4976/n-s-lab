#!/bin/bash
a=1
until [ $a -ge 3 ]
do
	echo "value of a=$a"
	a=`expr $a + 1`
done

