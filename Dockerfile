FROM nginx:latest
COPY startbootstrap-resume-gh-pages /usr/share/nginx/html/
RUN rm -r /usr/share/nginx/html/index.html
RUN apt-get update
RUN apt-get install wget
RUN y
RUN apt-get install zip
RUN wget https://github.com/antonio202/prueba/archive/master.zip
RUN unzip prueba-master.zip /usr/share/nginx/html/
EXPOSE 80