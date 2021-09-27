#!/bin/bash

until [ $x -eq 15 ]
do
	echo Valor $x
	x=$(expr $x + 1)
done

