#!/usr/bin/env bash

#################################################################################
#                   Indicador estadístico de uso de palabras                    #
#   Imprime en pantalla un Top Ten de las palabras que poseen al menos 4        #
#   letras ordenadas desde la que tiene más apariciones a la que tiene menos    #
#################################################################################

FILE=$1

for WORD in $(cat $FILE | tr "\t\n\r" " " | tr -d "[:punct:]")
do
    if [[ ${#WORD} -ge 4 ]]
    then
        FREQ=$(grep -o -w "$WORD" $FILE | wc -l) 
        echo "$FREQ apariciones: \"$WORD\"" >> /tmp/words_usage.tmp
    fi
done

echo ""
echo "=============================================================================================="
echo "                        USO DE PALABRAS EN \"$(ls ./data)\""
echo "=============================================================================================="
echo ""
POSITION=1
cat /tmp/words_usage.tmp | sort -nr | uniq | head |  while read LINE
do
    echo "#$POSITION puesto -> $LINE"
    POSITION=$((POSITION+1))
done
echo ""

rm /tmp/words_usage.tmp