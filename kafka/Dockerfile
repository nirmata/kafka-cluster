FROM java:7
MAINTAINER Nirmata 
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty universe" >> /etc/apt/sources.list; apt-get update; apt-get install -y unzip wget git

RUN wget -q http://mirror.gopotato.co.uk/apache/kafka/0.8.1.1/kafka_2.8.0-0.8.1.1.tgz -O /tmp/kafka_2.8.0-0.8.1.1.tgz
RUN tar xfz /tmp/kafka_2.8.0-0.8.1.1.tgz -C /opt

ENV KAFKA_HOME /opt/kafka_2.8.0-0.8.1.1
ADD run.sh /run.sh
CMD ./run.sh 
