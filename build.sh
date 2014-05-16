#!/bin/bash
NAME=jmcarbo/openerp
TAG=latest
docker build --rm $@ -t $NAME:$TAG . 
#docker push $NAME
