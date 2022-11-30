#!/usr/bin/env bash

#############################################################
#      Indicador estadístico de longitud de palabras        #
# (la más corta, la más larga y el promedio de longitud)    #
#############################################################

FILE=$1

TOTAL_WORDS=$(cat $FILE | wc -w)
SHORTEST=100
SHORTEST_W=""
LONGEST=-1
LONGEST_W=""
LENGTH_SUM=0

for WORD in $(cat $FILE | tr "\t\n\r" " " | tr -d "[:punct:]" )
do
    [[ ${#WORD} -lt $SHORTEST ]] && ([[ $WORD != "" ]] || [[ $WORD != " " ]]) && SHORTEST=${#WORD} && SHORTEST_W=$WORD
    [[ ${#WORD} -gt $LONGEST ]] && LONGEST=${#WORD} && LONGEST_W=$WORD
    LENGTH_SUM=$(($LENGTH_SUM+${#WORD}))
done
echo ""
echo "=============================================================================================="
echo "                        LONGITUD DE PALABRAS DE \"$(ls ./data)\""
echo "=============================================================================================="
echo ""
echo "PALABRA MAS CORTA: \"$SHORTEST_W\" con $SHORTEST caracteres."
echo "PALABRA MAS LARGA: \"$LONGEST_W\" con $LONGEST caracteres."
echo "PROMEDIO DE LONGITUD DE PALABRAS: $(echo "scale=0 ; $LENGTH_SUM/$TOTAL_WORDS" | bc) caracteres."
echo ""

