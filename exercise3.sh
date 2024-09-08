#!/bin/bash
#set -x
filename=$(ls *.fasta)
motifs=("YVDRHPDDTINDYLNSI" "MGNHTWDHPDIFEILTTK") 
for file in $filename
do			
	sequence=$(grep -v ">" "$file")

for motif in "${motifs[@]}"
do
# echo $motif
position=$(echo "$sequence" | grep -b -o "$motif" )

if [ -n "$position" ]
then
	echo	"$motif motif found in $file at $position"
else
	echo " $motif motif not found in $file"
fi
done
done
#set +x
