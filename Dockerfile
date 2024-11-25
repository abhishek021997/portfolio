FROM ubuntu
MAINTAINER Abhishek sharma
RUN apt-get update -y && apt install apache2 -y 
WORKDIR /var/www/html/
COPY ./project_1 .
EXPOSE 80 8080
ENTRYPOINT ["/usr/sbin/apache2", "-k", "start"]
