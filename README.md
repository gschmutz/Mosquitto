Mosquitto
=========

Docker build file for mosquitto. This docker file is based on
ubuntu 14.4 and mosquitto version 1.4.14

Get it
======
sudo docker pull gschmutz/mqtt-mosquitto

Run it
======
sudo docker run -p 1883:1883 --name mosquitto -d gschmutz/mqtt-mosquitto
