# sxapi AWS S3 Sample

This section show you a sample config file for building microservice based on AWS S3 service. This sample must be used with sxapi-core engine (master) 

SXAPI
=====
SXAPI for [Simple and eXtensible Application Programming Interface](https://github.com/startxfr/sxapi-core) 
is an open-source project for building simple and small microservices quickly and efficiently.

INSTALLING YOU ENVIRONEMENT
===========================
Use the [sxapi-installer](https://github.com/startxfr/sxapi-installer/blob/master/README.md) toget a full workstation environement with 
[sxapi-console-cli](https://github.com/startxfr/sxapi-console/blob/master/docs/2.CLI.md) ready to use
Versionning is an important part of a microservice architecture. Be sure to follow the [developper guidline](https://github.com/startxfr/sxapi-core/blob/master/docs/2.Develop.md) to get a good worling environement

RUNNING THIS SAMPLE
===================

1. Check that you have a fully working dev environment (```sxapi-cli version```)
2. Check that you are inside a versioned project (```git status```)
3. Create a sub-directory for hosting your microservice (```mkdir aws-s3; cd aws-s3```) 
4. Setup this sample in your directory ```sxapi-cli setup aws/s3```
5. Start your micro-service ```sxapi-cli start```
6. Visit your service ```firefox http://localhost:8080/```

AVAILABLES ENDPOINTS
====================

1. [addMessage](https://github.com/startxfr/sxapi-core/blob/master/docs/resources/s3.md#addmessage-endpoint)

TROUBLESHOOTING
===============

1. sxapi-myapi conflict name
   If you encounter a container name conflict, you can remove the running one ```docker rm -f sxapi-myapi``` or rename your container by changing the first line in docker-compose.yml file.
