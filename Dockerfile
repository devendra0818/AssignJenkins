FROM ubuntu
RUN apt-get update -y
RUN apt-get install nginx -y
ADD ./1.html /var/www/html/
ENV name DevOps Intellipath
