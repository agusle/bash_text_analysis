#!/usr/bin/env bash

#####################################    
#   Contador de líneas en blanco    #
#####################################

FILE=$1
BLANKLINES=$(grep -c "^\s*$" $FILE) 

echo ""
echo "=============================================================================================="
echo "                        CANTIDAD DE LINEAS EN BLANCO \"$(ls ./data)\""
echo "=============================================================================================="
echo ""
echo "LINEAS EN BLANCO: $BLANKLINES"
echo ""