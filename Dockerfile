FROM ubuntu/apache2
MAINTAINER Abhishek sharma
RUN apt-get update -y
WORKDIR /var/www/html
COPY ./project_1/* .
EXPOSE 80 8080
ENTRYPOINT ["/usr/sbin/apache2", "-k", "start"]
