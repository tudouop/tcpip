#!/bin/bash
#clean running docker
for i in `sudo docker ps -a | awk '{print $1}'`; do sudo docker stop $i; sudo docker rm $i; done
#clean docker images
for i in `sudo docker images | awk '{print $3}'`; do sudo docker rmi $i; done

#clean network
sudo ovs-vsctl del-br net10
sudo ovs-vsctl del-br net20
sudo ifconfig docker0 down
sudo brctl delbr docker0
