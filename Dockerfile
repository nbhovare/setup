FROM ubuntu:latest
RUN apt update -y && apt upgrade -y && apt install apache2 -y && mkdir /var/www/html/my_app
WORKDIR /var/www/html/
COPY jenkins/my_app/ ./
EXPOSE 80

# Run Apache in Foreground to Server
CMD ["apachectl", "-D", "FOREGROUND"]