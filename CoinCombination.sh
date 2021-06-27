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


declare -A Dic


for (( i=1; i<=10; i++ ))
do
	dice1=$(( RANDOM%2 ))
	dice2=$(( RANDOM%2 ))
	if [ $dice1 -eq 0 ] && [ $dice2 -eq 0 ]
        then
                Dic[face1]="HH"
        elif [ $dice1 -eq 0 ] && [ $dice2 -eq 1 ]

	then
                Dic[face2]="HT"

	elif [ $dice1 -eq 1 ] && [ $dice2 -eq 0 ]

	then
                Dic[face3]="TH"

	else
                Dic[face4]="TT"


        fi
done


echo ${Dic[@]}

declare -A Dicti


for (( i=1; i<=10; i++ ))
do
 dice1=$(( RANDOM%2 ))
 dice2=$(( RANDOM%2 ))
 dice3=$(( RANDOM%2 ))

	if [ $dice1 -eq 0 ] && [ $dice2 -eq 0 ] && [ $dice3 -eq 0 ]

        then
                Dicti[face1]="HHH"
        elif [ $dice1 -eq 0 ] && [ $dice2 -eq 0 ] && [ $dice3 -eq 1 ]


	then
                Dicti[face2]="HHT"

	elif [ $dice1 -eq 0 ] && [ $dice2 -eq 1 ] && [ $dice3 -eq 0 ]


	then
                Dicti[face3]="HTH"
	elif [ $dice1 -eq 0 ] && [ $dice2 -eq 1 ] && [ $dice3 -eq 1 ]


        then
                Dicti[face4]="HTT"
	elif [ $dice1 -eq 1 ] && [ $dice2 -eq 0 ] && [ $dice3 -eq 0 ]


        then
                Dicti[face5]="THH"
	elif [ $dice1 -eq 1 ] && [ $dice2 -eq 0 ] && [ $dice3 -eq 1 ]


        then
                Dicti[face6]="THT"
	elif [ $dice1 -eq 1 ] && [ $dice2 -eq 1 ] && [ $dice3 -eq 0 ]


        then
                Dicti[face7]="TTH"

	else
                Dicti[face8]="TTT"


        fi
done
echo "${Dicti[@]}"
