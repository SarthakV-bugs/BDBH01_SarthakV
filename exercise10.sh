#!/bin/bash


#Hardcode DNA seq

dna_seq="ATCGATCGCTAGCTAGCT"

#counter initialization
A_count=0
C_count=0
G_count=0
T_count=0

#For loop to iterate through the entire seq

for (( i=0; i<${#dna_seq}; i++ ))
 do
    nucleotide=${dna_seq:$i:1}

	#check conditions to check if the seq has AGTC 
	if [[ ! "$nucleotide" =~ [AGTC] ]]
	then
		echo "ERROR: Invalid Sequence, not A,G,T,C"
		exit 1
	fi

#using case for incrementing the nucleotide counter
case $nucleotide in 
	A) ((A_count++));;
	C) ((C_count++));;
	G) ((G_count++));;
	T) ((T_count++));;
esac
done

#final count
echo "A: $A_count"
echo "C: $C_count"
echo "G: $G_count"
echo "T: $T_count"

