#!/bin/sh

docker-machine create --driver amazonec2 --amazonec2-region eu-west-1 --amazonec2-vpc-id vpc-90e83ff4 goji-webapp
