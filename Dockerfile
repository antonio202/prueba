FROM nginx:latest
RUN rm -r /usr/share/nginx/html/*
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y zip
RUN mkdir /descargas
RUN wget -P /descargas https://github.com/antonio202/prueba/archive/master.zip
RUN ls /descargas
RUN unzip /descargas/master.zip
RUN mv /prueba-master/* /usr/share/nginx/html/
RUN ls /usr/share/nginx/html/
EXPOSE 80

#####################################################################

LABEL "vendor"="BroadTech Innovations PVT LTD"
LABEL "vendor.url"="http://www.broadtech-innovations.com/"
LABEL "maintainer"="sgeorge.ml@gmail.com"

# Update Local Repository Index
RUN apt-get update

# Upgrade packages in the base image and apply security updates
RUN DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -yq

# Install package utils
RUN DEBIAN_FRONT=noninteractive apt-get install -yq apt-utils

# Install MongoDB
RUN DEBIAN_FRONTEND=noninteractive apt-get install -yq mongodb

# Remove package files fetched for install
RUN apt-get clean

# Remove unwanted files
RUN rm -rf /var/lib/apt/lists/

# Open MongoDB default port
EXPOSE 27017

# Pass Database Location on file system as parameter to MongoDB 
CMD ["--dbpath", "/var/lib/mongodb"]

# Start MongoDB when container runs
ENTRYPOINT ["/usr/bin/mongod"]

# MongoDB sometimes comes without a default password and this has
# caused exposure of Data on the Internet.

#     https://www.shodan.io/search?query=mongodb

# So please be sure to provide passwords for users if you wish
# to expose your MongoDB server to the outside world.
#--------------------------END--------------------------------------#