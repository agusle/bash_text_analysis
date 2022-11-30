#!/usr/bin/env bash

#################################################################
#            Identificación de nombres propios                  #
#    Se identifican sólo si están en este formato (Nnnnnnnnn),  #
#    aunque la palabra no sea un nombre propio realmente.       #
#    Ejemplos: Mateo, Estonoesunnombre, Ana.                    #
#################################################################

FILE=$1

echo ""
echo "=============================================================================================="
echo "                       NOMBRES PROPIOS DE \"$(ls ./data)\""
echo "=============================================================================================="
echo ""

for WORD in $(grep -wo '[A-Z]\w*' $FILE)
do 
    #filtrado por longitud y por los que son todos uppercase
    [[ ${#WORD} -ge 5 ]] && [[ ! $WORD =~ ^[[:upper:]]+$ ]] && echo $WORD
done

echo ""