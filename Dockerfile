
FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install python python-pip
RUN mkdir /opt/app
COPY src/* /opt/app/
COPY requirements.txt /opt/app/
RUN pip install --upgrade pip
RUN pip install -r /opt/app/requirements.txt
COPY docker-entrypoint.sh /
#exponemos el puerto 5000 hacia fuera de la imagen
EXPOSE 5000
#ejecutamos el programa
ENTRYPOINT "/docker-entrypoint.sh"
