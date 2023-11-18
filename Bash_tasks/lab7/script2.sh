#!/bin/bash

num=0

until [ $num -gt 20 ]
do
	echo $num
	num=$((num + 2))
done
