<p align="center">
    <img src="https://github.com/agusle/bash_text_analysis/blob/main/extras/project-logo.png" width = 500 height = 500>
</p>

<p align="center">
    <a href="https://github.com/agusle/bash_text_analysis/commits/main">
    <img src="https://img.shields.io/github/last-commit/agusle/bash_text_analysis?logo=Github"
         alt="GitHub last commit">
</p>

<p align="center">
  <a href="#-sobre">Sobre</a> • 
  <a href="#%EF%B8%8F-instalación-y-ejecución">Instalación y ejecución </a> •
  <a href="#-uso">Uso</a>
</p>

------------------

## 📖 Sobre
El presente correponde al trabajo practico final de la materia: **ENTORNO DE PROGRAMACION** correspondiente a la Tecnicatura Universitaria en Inteligencia Artificial.

El trabajo consiste en generar un contenedor que al ejecutarse presente un menú de
opciones de filtrados de un texto dado. Deberán editar un Dockerfile y construir una imagen.
El texto a analizar debe ser depositado en un directorio del equipo host y copiar el contenido
del mismo al contenedor para que lo tenga disponible para su posterior análisis.

El resto de consignas y detalles del enunciado podrás encontralos [aquí](https://github.com/agusle/bash_text_analysis/blob/main/extras/TP_FINAL.pdf).

Dentro del proyecto podrás encontrar:
```bash
.
├── Dockerfile                  -----> Intrucciones para crear imagen de Docker
├── README.md                   -----> Descripción del proyecto
├── data                        -----> Contiene el archivo a ser analizado
│   └── objetivos.txt           -----> Archivo de texto a analizar
├── extras                      -----> Contiene archivos secundarios
│   ├── TP_FINAL.pdf            -----> Consignas del trabajo práctico
│   ├── entorno.txt             -----> Otro ejemplo de archivo de texto para analizar.
│   └── project-logo.png        -----> Imagen de logo del proyecto
├── menu.sh                     -----> Script de ejecución principal
└── scripts                     -----> Contiene scrips que brindan funcionalidad al script principal
    ├── blankLinesCounter.sh    -----> Script para contar lineas vacias
    ├── findNames.sh            -----> Script para identificar nombres propios
    ├── statsSentences.sh       -----> Script que brinda estadisticas de oraciones
    ├── statsUsageWords.sh      -----> Script que brinda estadisticas de utilizacion de palabras
    └── statsWords.sh           -----> Script que brinda estadisticas de palabras
```

------------------

## ⚡️ Instalación y ejecución 

Debajo puedes encontrar un ejemplo sobre como instalar y ejecutar los servicios:

Puedes utilizar [Docker](https://www.docker.com/) para instalar de forma fácil los paquetes y bibliotecas utilizadas.

Requisitos que debes disponer en tu equipo:
- 2MB de espacio en disco para clonar el proyecto
- 11.45 MB de espacio en disco para crear la imagen de docker


- **Descargar el proyecto**

```bash
$ git clone https://github.com/agusle/bash_text_analysis.git
```

- **Crear la imagen de Docker**

```bash
$ docker build -t bash_text_analysis .
```

La misma se encuentra basada en la [imagen de Bash de docker hub](https://hub.docker.com/_/bash).

- **Ejecutar el container en Docker**

```bash
$ docker run -it --rm --name mi_analizador_de_texto bash_text_analysis
```

Una vez ejecutado podrás econtrarte con la solicitud de tu nombre y luego el siguiente menú:
<p align="center">
    <img src="https://github.com/agusle/bash_text_analysis/blob/main/extras/Capture_menu.PNG" width = 500 height = 137>
</p>

Donde deberás elegir entre diferentes opciones de análisis para tu texto ingresando su número.
Ejemplo ingresando el nro. "1":
<p align="center">
    <img src="https://github.com/agusle/bash_text_analysis/blob/main/extras/Capture_1.PNG" width = 600 height = 300>
</p>

------------------

## 👀 Uso

Para poder analizar tu propio texto, deberás ingresar el mismo en formato .txt dentro del directorio ./data.
Solo se admite un solo archivo en dicho directorio, y su extensión únicamente debe ser **".txt"**.

- **El proyecto ya incluye un ejemplo:**

```bash
$ ./data/objetivos.txt
```

Para comenzar con tu propio texto, debes reemplazar el archivo existente por el que quieras teniendo en cuenta las restricciones mencionadas.

Para verificar los resultados del análisis de tu texto puedes basarte en la siguiente [herramienta online](https://wordcount.com/) u otra que encuentres útil.
