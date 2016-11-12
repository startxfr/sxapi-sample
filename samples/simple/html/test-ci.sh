#!/bin/bash
echo "=================> STARTING TEST OF YOUR SXAPI INSTANCE (dev)"
echo "=================> SETUP TEST ENVIRONMENT (dev)"
rm -rf /tmp/sxapi;
export CWD=$(pwd)
cp -r $PWD /tmp/sxapi
cd /tmp/sxapi;
echo "========> BUILDING YOUR SXAPI INSTANCE (dev)"
sudo docker-compose build
echo "========> STARTING YOUR SXAPI INSTANCE (dev)"
sudo docker-compose up -d
echo "========> STATE OF YOUR SXAPI INSTANCE (dev)"
sudo docker-compose ps
echo "=================> TEST ENDED SUCCESSFULLY"
exit 0;