#!/bin/bash
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
sudo docker-compose ps
echo "=================> TEST ENDED SUCCESSFULLY"
exit 0;