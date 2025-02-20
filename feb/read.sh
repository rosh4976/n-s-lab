#!/bin/bash
echo "enter a value"
read a 
echo "enter a value b"
read b
result=`expr $a + $b`
echo "result: $result"

