# Define the base image on top of which we are going to customize
FROM devopsedu/webapp as base

# Define the Createor and Maintainer of this image
MAINTAINER Sandeep Reddy <sandeee2403@gmail.com>

# Run the command to install apache as a prerequisite
RUN apt-get update && apt-get install -y apache2

COPY ./website /var/www/html 

EXPOSE 80
