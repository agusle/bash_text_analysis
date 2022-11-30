#!/usr/bin/env bash

#########################################################################################
#                           Menu de opciones de usuario                                 #
# Este script se ejecuta directamente al inicializarse el container.                    #
# Tiene como función brindar un conjunto de análisis sobre un archivo de texto          #
# ubicado en ./data. El usuario puede elegir entre estas opciones y los resultados      #
# de las mismas serán generados por diferentes archivos .sh ubicados en el directorio   #
# ./scripts. Antes de comenzar, valida que el archivo a analizar se encuentre           #
# correctamente cargado.                                                                #
#########################################################################################

#validacion de archivo de texto en directorio  ./data
[[ $(ls ./data | wc -l) -lt 1 ]] && echo "No se encontró archivo dentro del directorio \"./data\"." && exit 1 
[[ $(ls ./data | wc -l) -gt 1 ]] && echo "El directorio \"./data\" posee mas de un archivo." && exit 2 
[[ ! -e $(find ./data -type f -name "*.txt") ]] && echo "El archivo cargado en \"./data\" no es de texto." && exit 3

#introduccion
read -p "Antes de comenzar, ¿podrias decirme tu nombre? : " USERNAME

#mensaje de bienvenida
echo -e "\nHola ${USERNAME^}!\nBienvenido al analizador de textos con bash!\n"
echo "Por favor, seleccione el análisis a realizar en \"$(ls ./data)\":"

#listado de opciones y seleccion
OPCIONES=("Longitud de palabras" "Uso de palabras" "Nombres propios" "Longitud de oraciones" "Lineas en blanco" "Salir")
PS3="Elija el número del analisis a realizar: "
FILE=./data/$(ls ./data)

select OPCION in "${OPCIONES[@]}"
do    
    case $OPCION in
        "Longitud de palabras")
            echo "Usted eligió la opción $REPLY: $OPCION"
            ./scripts/statsWords.sh $FILE
            ;;
        "Uso de palabras")
            echo "Usted eligió la opción $REPLY: $OPCION"
            ./scripts/statsUsageWords.sh $FILE
            ;;
        "Nombres propios")
            echo "Usted eligió la opción $REPLY: $OPCION"
            ./scripts/findNames.sh $FILE
            ;;
        "Longitud de oraciones")
            echo "Usted eligió la opción $REPLY: $OPCION"
            ./scripts/statsSentences.sh $FILE
            ;;
        "Lineas en blanco")
            echo "Usted eligió la opción $REPLY: $OPCION"
            ./scripts/blankLinesCounter.sh $FILE
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