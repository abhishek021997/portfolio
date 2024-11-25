FROM ubuntu/apache2
MAINTAINER Abhishek sharma
RUN apt-get update -y && mkdir -p /var/www/html/project_1
WORKDIR /var/www/html/project_1
COPY ./project_1/* .
EXPOSE 80 8080
ENTRYPOINT ["/usr/sbin/apache2", "-k", "start"]
