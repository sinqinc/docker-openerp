#!/bin/bash
NAME=docker.dpaw.wa.gov.au/confluence
TAG=latest
docker build $@ -t $NAME:$TAG . 
docker push $NAME