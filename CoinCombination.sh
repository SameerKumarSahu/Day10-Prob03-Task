#!/bin/bash -x

echo "Welcome to the coin combinatin program...."

declare -A Dict

Flipcoin=$((RANDOM%2))

if [ $Flipcoin -eq 0 ]
then
	echo "HEAD"
else
	echo "TAIL"
fi


for (( i=1; i<=10; i++ ))
do
Flipcoin=$((RANDOM%2))

if [ $Flipcoin -eq 0 ]
then
        Dict[Face1]="HEAD"
else
        Dict[Face2]="TAIL"
fi
done
echo ${Dict[@]}
