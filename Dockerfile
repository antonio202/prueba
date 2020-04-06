FROM nginx:latest
RUN rm -r /usr/share/nginx/html/index.html
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y zip
RUN mkdir /descargas
RUN wget -P /descargas https://github.com/antonio202/prueba/archive/master.zip
RUN ls /descargas
RUN unzip /descargas/master.zip
RUN cd /prueba-master
RUN mv * /usr/share/nginx/html/
RUN ls /usr/share/nginx/html/
EXPOSE 80