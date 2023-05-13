#!/bin/bash

case $CONTAINER_NAME in

  "service-a-az1")
    echo -n "Starting flask application in region: $REGION and zone: $ZONE"
    wait $(/usr/local/bin/envoy -c /app/envoy-config/zone-1.yaml --service-zone us-east-1) & gunicorn --bind 0.0.0.0:$PORT wsgi:app
    ;;

  "service-b-az1")
    echo -n "Starting flask application in region: $REGION and zone: $ZONE"
    wait $(/usr/local/bin/envoy -c /app/envoy-config/zone-2.yaml --service-zone us-east-1) & gunicorn --bind 0.0.0.0:$PORT wsgi:app
    ;;
  
  "service-b-az2")
    echo -n "Starting flask application in region: $REGION and zone: $ZONE"
    wait $(/usr/local/bin/envoy -c /app/envoy-config/zone-3.yaml --service-zone us-east-1) & gunicorn --bind 0.0.0.0:$PORT wsgi:app
    ;;
esac