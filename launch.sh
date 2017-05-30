#!/bin/bash

(cd /opt/certs; ./generate-certificate.sh)

redis-server --port 6390 --daemonize yes

pm2-docker pm.json
