FROM bash:4.4

LABEL   MANTAINER="Agustin Leperini"\ 
        EMAIL="agustinleperini5@gmail.com"

WORKDIR /app

COPY . .

CMD ["bash", "/app/menu.sh"]
