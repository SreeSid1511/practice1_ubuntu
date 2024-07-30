# Pulling a base image
FROM ubuntu

# Setting up a WORKDIR to copy all the code inside the container
WORKDIR /app

# To update ubuntu OS
RUN apt-get update -y

# To install apache2 webserver
RUN apt-get install apache2 -y

# Copy the code from local to inside the container
COPY . /var/www/html

# Start apache2 server
ENTRYPOINT apachectl -D FOREGROUND
