#!/bin/bash
echo "=================> STARTING TEST 'ALL SAMPLES' (v0.0.17)"
echo "=================> SETUP 'ALL SAMPLES' TEST ENVIRONEMENT (v0.0.17)"
set -ev
mkdir /tmp/sxapi-sample;
cd /tmp/sxapi-sample;
git clone https://github.com/startxfr/sxapi-sample.git .
git checkout v0.0.17
echo "========> STARTING 'ALL SAMPLES' containers (v0.0.17)"
sudo docker-compose -f samples/docker-compose.yml up -d
echo "========> LIST OF 'ALL SAMPLES' containers (v0.0.17)"
sudo docker-compose -f samples/docker-compose.yml ps
echo "=================> TEST ENDED SUCCESSFULLY (v0.0.17)"
exit 0;





