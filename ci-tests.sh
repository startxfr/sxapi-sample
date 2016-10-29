#!/bin/bash
echo "=================> STARTING TEST"
echo "=================> SETUP TEST ENVIRONMENT"
set -ev
mkdir /tmp/sxapi-sample;
cd /tmp/sxapi-sample;
git clone https://github.com/startxfr/sxapi-sample.git .
echo "========> TESTING All containers"
sudo docker-compose -f docker-compose.yml up -d
echo "========> RESULT"
sudo docker-compose -f docker-compose.yml ps
echo "=================> TEST ENDED SUCCESSFULLY"
exit 0;





