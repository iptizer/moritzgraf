#!/bin/bash
CONTAINER_NAME="moritzgrafde"
DEPLOYMENT="moritzgrafde"
NAMESPACE="web"

hugo

docker build -t ${CONTAINER_NAME}:latest -t registry.haumdaucher.de/${CONTAINER_NAME}:latest .
docker push registry.haumdaucher.de/${CONTAINER_NAME}:latest

kubectl patch deployment $DEPLOYMENT -n $NAMESPACE -p "{\"spec\": {\"template\": {\"metadata\": { \"labels\": {  \"redeploy\": \"$( date +%s )\"}}}}}"
kubectl get po -l app=$DEPLOYMENT -n $NAMESPACE -w