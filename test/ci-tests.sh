#!/bin/bash
echo "=================> STARTING TEST 'ALL SAMPLES' (master)"
echo "=================> SETUP 'ALL SAMPLES' TEST ENVIRONEMENT (master)"
set -ev
mkdir /tmp/sxapi-sample;
cd /tmp/sxapi-sample;
git clone https://github.com/startxfr/sxapi-sample.git .
git checkout master
echo "========> STARTING 'ALL SAMPLES' containers (master)"
sudo docker-compose -f samples/docker-compose.yml up -d
echo "========> LIST OF 'ALL SAMPLES' containers (master)"
sudo docker-compose -f samples/docker-compose.yml ps
echo "=================> TEST ENDED SUCCESSFULLY (master)"
exit 0;





