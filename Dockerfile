# VERSION 1.0
FROM testacitoolkit:v1
MAINTAINER Chad Peterson, chapeter@cisco.com
RUN apt-get -y install mysql-server wget
WORKDIR /opt
RUN wget http://dev.mysql.com/get/Downloads/Connector-Python/mysql-connector-python_2.0.4-1ubuntu14.04_all.deb
RUN git clone https://github.com/chapeter/acitoolkitdemo
RUN dpkg -i mysql-connector-python_2.0.4-1ubuntu14.04_all.deb
RUN pip install Flask
WORKDIR acitoolkitdemo
CMD [ "/opt/acitoolkitdemo/start.sh" ]
