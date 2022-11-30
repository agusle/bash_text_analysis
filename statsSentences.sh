#!/usr/bin/env bash

#############################################################
#      Indicador estadístico de longitud de oraciones       #
# (la más corta, la más larga y el promedio de longitud)    #
#############################################################
FILE=$1
SENTENCE=""
SHORTEST_S=""
SHORTEST=1000
TOTAL_SENTENCES=0
TOTAL_WORDS=$(cat $FILE | wc -w)


for WORD in $(cat $FILE | tr  "\n\t\r" " ")
do
    #ignore file title
    [[ $WORD =~ ^[[:upper:]]+$ ]] && continue

    #filtrar si la palabra tiene un punto solo al final, 
    #no se considera punto al medio de la palabra o principio.
    if [[ ! "$WORD" == *"." ]]
    then
        SENTENCE=$SENTENCE"$WORD "
    else
        SENTENCE=$SENTENCE"$WORD"
        LENGHT=$(echo -n $SENTENCE | wc -w)
        [[ $LENGHT -lt $SHORTEST ]] && SHORTEST=$LENGHT && SHORTEST_S=$SENTENCE
        [[ $LENGHT -gt $LONGEST ]] && LONGEST=$LENGHT && LONGEST_S=$SENTENCE
        TOTAL_SENTENCES=$(($TOTAL_SENTENCES+1))
        SENTENCE=""
    fi
done

echo ""
echo "=============================================================================================="
echo "                        LONGITUD DE ORACIONES DE \"$(ls ./data)\""
echo "=============================================================================================="
echo ""
echo -e "ORACION MAS CORTA:\n\"$SHORTEST_S\"\nPosee $SHORTEST palabras.\n"
echo -e "ORACION MAS LARGA:\n\"$LONGEST_S\"\nPosee $LONGEST palabras.\n"
echo "PROMEDIO DE LONGITUD DE ORACIONES: $(echo "scale=0 ; $TOTAL_WORDS/$TOTAL_SENTENCES" | bc) palabras."
echo ""
