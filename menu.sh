#!/usr/bin/env bash

#########################
# Comentarios menu      #
#########################

#introduccion
#read -p "Antes de comenzar, ¿podrias decirme tu nombre? : " USERNAME

#validacion de archivo de texto en directorio  ./data
[[ $(ls ./data | wc -l) -lt 1 ]] && echo "No se encontró archivo dentro del directorio \"./data\"." && exit 1 
[[ $(ls ./data | wc -l) -gt 1 ]] && echo "El directorio \"./data\" posee mas de un archivo." && exit 2 
[[ ! -e $(find ./data -type f -name *.txt) ]] && echo "El archivo cargado en \"./data\"  no es de texto." && exit 3

#mensaje de bienvenida
echo -e "Hola $USERNAME!\nBienvenido al analizador de textos con bash!"
echo "Por favor, seleccione el análisis a realizar en \"$(ls ./data)\":"

#listado de opciones y seleccion
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
done

exit 0