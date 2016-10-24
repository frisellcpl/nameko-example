#!/bin/bash

# Check if rabbit is up and running before starting the service.

is_ready() {
    eval "curl -I ${RABBIT_USER}:${RABBIT_PASSWORD} http://${RABBIT_HOST}:${RABBIT_PORT}/api/vhosts"
}

i=0
while ! is_ready; do
    i=`expr $i + 1`
    if [ $i -ge 10 ]; then
        echo "$(date) - rabbit still not ready, giving up"
        exit 1
    fi
    echo "$(date) - waiting for rabbit to be ready"
    sleep 3
done

# Run Service
echo "$(pwd)"
echo "$(ls)"
nameko run --config config.yml servicea.servicea
