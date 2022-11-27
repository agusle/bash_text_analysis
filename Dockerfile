FROM bash:4.4

LABEL MANTAINER Agustin Leperini agustinleperini5@gmail.com

COPY . .
CMD ["bash", "/menu.sh"]
