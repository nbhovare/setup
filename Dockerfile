FROM ubuntu:latest
RUN sudo apt update -y && sudo apt upgrade -y && apt install apache2 && mkdir /var/www/html/my_app
WORKDIR /var/www/html/
COPY ./my_app/* ./
EXPOSE 80