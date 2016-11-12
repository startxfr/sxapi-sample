#!/bin/bash
<<<<<<< HEAD
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
=======
echo "=================> STARTING TEST OF YOUR SXAPI INSTANCE (v0.0.7)"
echo "=================> SETUP TEST ENVIRONMENT (v0.0.7)"
rm -rf /tmp/sxapi;
export CWD=$(pwd)
cp -r $PWD /tmp/sxapi
cd /tmp/sxapi;
echo "========> BUILDING YOUR SXAPI INSTANCE (v0.0.7)"
sudo docker-compose build
echo "========> STARTING YOUR SXAPI INSTANCE (v0.0.7)"
sudo docker-compose up -d
echo "========> STATE OF YOUR SXAPI INSTANCE (v0.0.7)"
>>>>>>> master
sudo docker-compose ps
echo "=================> TEST ENDED SUCCESSFULLY"
exit 0;