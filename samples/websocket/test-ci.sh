#!/bin/bash
echo "=================> STARTING TEST v0.0.7"
echo "=================> SETUP TEST ENVIRONMENT"
set -ev
mkdir /tmp/sxapi;
cd /tmp/sxapi;
git clone https://github.com/startxfr/sxapi-core.git .
git checkout v0.0.7
echo "========> BUILDING Service Container (v0.0.7)"
sudo docker-compose build
echo "========> TESTING OS Container (v0.0.7)"
sudo docker-compose up -d
echo "========> RESULT container (v0.0.7)"
sudo docker-compose ps
echo "=================> TEST ENDED SUCCESSFULLY"
exit 0;





