#!/bin/bash
echo "=================> STARTING TEST OF YOUR SXAPI INSTANCE (master)"
echo "=================> SETUP TEST ENVIRONMENT (master)"
rm -rf /tmp/sxapi;
export CWD=$(pwd)
cp -r $PWD /tmp/sxapi
cd /tmp/sxapi;
echo "========> BUILDING YOUR SXAPI INSTANCE (master)"
sudo docker-compose build
echo "========> STARTING YOUR SXAPI INSTANCE (master)"
sudo docker-compose up -d
echo "========> STATE OF YOUR SXAPI INSTANCE (master)"
sudo docker-compose ps
echo "=================> TEST ENDED SUCCESSFULLY"
exit 0;