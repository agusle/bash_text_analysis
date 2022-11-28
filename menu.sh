#!/usr/bin/env bash

#########################
# Comentarios menu      #
#########################

#introduccion
#read -p "Antes de comenzar, ¿podrias decirme tu nombre? : " USERNAME


#eleccion de archivo en caso que haya mas de uno
#[[ $(ls ./data | wc -l) -gt 1 ]]
#then 
#    select

echo -e "Hola $USERNAME!\nBienvenido al analizador de textos con bash!\nPor favor, seleccione el análisis a realizar en \"$(ls ./data)\":"

OPCIONES=("Longitud de palabras" "Uso de palabras" "Nombres propios" "Longitud de oraciones" "Lineas en blanco" "Salir")
PS3="Elija el número del analisis a realizar: "
select OPCION in "${OPCIONES[@]}"
do    
    case $OPCION in
        "Longitud de palabras")
            echo "Usted eligió la opción $REPLY: $OPCION"
            ;;
        "Uso de palabras")
            echo "Usted eligió la opción $REPLY: $OPCION"
            ;;
        "Nombres propios")
            echo "Usted eligió la opción $REPLY: $OPCION"
            ;;
        "Longitud de oraciones")
            echo "Usted eligió la opción $REPLY: $OPCION"
            ;;
        "Lineas en blanco")
            echo "Usted eligió la opción $REPLY: $OPCION"
            ;;        
        "Salir")
            echo "Muchas gracias por utilizar el analizador de textos, $USERNAME."
            break
            ;;
        *)
            echo "Usted ha seleccionado la opción \"$REPLY\" que no se encuentra en el listado. Por favor, elige una opción válida."
            continue
            ;;
    esac
    #echo -n "Analizando texto"
    #for message in $(seq 3)
    #do
    #    echo -n "."
    #    sleep 1
    #done 

done
