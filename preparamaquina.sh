#!/bin/bash

# Actualiza la lista de paquetes e instala las actualizaciones disponibles
sudo apt update -y
sudo apt upgrade -y

# Instala git
sudo apt install git -y

# Instala más utilidades, jq, ImageMagick, unzip, zip, Node.js y uuid-runtime
sudo apt-get install moreutils jq imagemagick unzip zip nodejs uuid-runtime -y

# Clona el repositorio
git clone https://github.com/Kas-tle/java2bedrock.sh.git

# Ingresa al directorio clonado
cd java2bedrock.sh

# Cambia los permisos del script converter.sh
chmod +x ./converter.sh

# Mueve todos los archivos al directorio /home/ubuntu y elimina el directorio java2bedrock.sh
mv * /home/ubuntu && rm -r /home/ubuntu/java2bedrock.sh

# Volver al directorio ubuntu
cd /home/ubuntu