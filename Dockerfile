FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2
EXPOSE 80
ENTRYPOINT ["apachectl", "-D",  "FOREGROUND"]
