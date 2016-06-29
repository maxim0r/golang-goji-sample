#!/bin/sh

docker build -t webapp-proxy --build-arg APPHOST=webapp --build-arg APPPORT=8000 --build-arg EXPOSEPORT=80 .
