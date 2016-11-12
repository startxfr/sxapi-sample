#!/bin/bash
echo "=================> STARTING TEST 'ALL SAMPLES' (dev)"
echo "=================> SETUP 'ALL SAMPLES' TEST ENVIRONEMENT (dev)"
set -ev
mkdir /tmp/sxapi-sample;
cd /tmp/sxapi-sample;
git clone https://github.com/startxfr/sxapi-sample.git .
git checkout dev
echo "========> STARTING 'ALL SAMPLES' containers (dev)"
sudo docker-compose -f samples/docker-compose.yml up -d
echo "========> LIST OF 'ALL SAMPLES' containers (dev)"
sudo docker-compose -f samples/docker-compose.yml ps
echo "=================> TEST ENDED SUCCESSFULLY (dev)"
exit 0;





