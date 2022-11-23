#!/bin/bash
 
OP=(+ -)
AUX=$(($RANDOM % 2))
 
NUM1=$(((($RANDOM % 999)) + 1))
NUM2=$(((($RANDOM % 999)) + 1))
 
RESP=$(expr $NUM1 ${OP[AUX]} $NUM2)
#ALINHAMENTO
if (($NUM1 > 99)); then
   printf '  %d\n' $NUM1
elif (($NUM1 > 9)); then
   printf '   %d\n' $NUM1
fi
 
if (($NUM2 > 99)); then
   printf ' %s%d\n' ${OP[AUX]} $NUM2
elif (($NUM2 > 9)); then
   printf '  %s%d\n' ${OP[AUX]} $NUM2
fi
 
echo "-----"
 
while [ true ]; do
   trap "" 2 20 #pega CONTROL+C, CONTROL+D, CONTROL+Z
   read -p "? " ANSWER
   if (($ANSWER == $RESP)); then
       echo "Right answer"
       break
   else
       echo "Wrong answer"
   fi
done
