#!/usr/bin/env bash

#########################
# Comentarios menu      #
#########################

#introduccion
#read -p "Antes de comenzar, ¿podrias decirme tu nombre? : " USERNAME

#permite un solo archivo para analizar en la carpeta ./data
[[ $(ls ./data | wc -l) -ne 1 ]] && echo "No se encontró archivo de texto dentro del directorio ./data" && exit 1 

echo -e "Hola $USERNAME!\nBienvenido al analizador de textos con bash!"
echo "Por favor, seleccione el análisis a realizar en \"$(ls ./data)\":"

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
            echo "Usted ha seleccionado la opción \"$REPLY\" que no se encuentra en el listado."
            echo "Por favor, elija una opción válida."
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

exit 0