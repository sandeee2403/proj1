# Define the base image on top of which we are going to customize
FROM devopsedu/webapp

# Define the Createor and Maintainer of this image
MAINTAINER Sandeep Reddy <sandeee2403@gmail.com>

# Run the command to install apache as a prerequisite
RUN apt-get update && apt-get install -y apache2

# Run the command to Create a DocumentRoot
RUN mkdir -p /opt/test/; touch /opt/test/initial-data-file

VOLUME /opt/test

COPY data-volume.tar.gz entrypoint /opt/

EXPOSE 80

ENTRYPOINT ["/opt/entrypoint"]

# the Default command and the Command to start the app in our container
CMD ["-D", "FOREGROUND"]