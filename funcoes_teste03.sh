#!/bin/bash

adiciona () {
	soma=$(expr $1 + $2)
	echo $soma
	return $soma
}

adiciona 10 20
echo $1 $2

