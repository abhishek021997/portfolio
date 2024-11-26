FROM nginx
MAINTAINER Abhishek Sharma
RUN apt update -y && apt install certbot python3-certbot-nginx -y && ufw allow 'Nginx Full' 
WORKDIR /usr/share/nginx/html
COPY ./project_1 .
EXPOSE 80 443


