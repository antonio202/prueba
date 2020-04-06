FROM nginx:latest
COPY startbootstrap-resume-gh-pages /usr/share/nginx/html/
RUN rm -r /usr/share/nginx/html/index.html
RUN apt-get update
RUN apt-get install wget --force
RUN apt-get install zip --force
RUN wget https://github.com/antonio202/prueba/archive/master.zip --force
RUN unzip prueba-master.zip /usr/share/nginx/html/
EXPOSE 80