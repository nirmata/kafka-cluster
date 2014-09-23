#!/bin/bash
HOST_IP=$1

sudo docker run -p 2181:2181  -h zookeeper -d nirmata/zookeeper
sudo docker run -p 9092:9092 -e ZOOKEEPER_PORT=2181 -e BROKER_ID=1 -e HOST_IP=$HOST_IP -e PORT=9092 -d nirmata/kafka:0.8.1
sudo docker run -p 9093:9093  -e ZOOKEEPER_PORT=2181 -e BROKER_ID=2  -e HOST_IP=$HOST_IP -e PORT=9093 -d nirmata/kafka:0.8.1
