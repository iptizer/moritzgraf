#!/bin/bash

hugo
docker build -t moritzgrafde:latest -t hub.moritzgraf.de:5000/moritzgrafde:latest .
#docker tag moritzgrafde:latest iptize.it:5000/moritzgrafde:latest
docker push hub.moritzgraf.de:5000/moritzgrafde:latest
