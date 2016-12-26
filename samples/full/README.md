# sxapi Full Sample

This section show you a sample config file for building microservice based on various external service. This sample must be used with sxapi-core engine (master) 

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
3. Create a sub-directory for hosting your microservice (```mkdir full; cd full```) 
4. Setup this sample in your directory ```sxapi-cli setup full```
5. Start your micro-service ```sxapi-cli start```
6. Visit your service ```firefox http://localhost:8080/```

TROUBLESHOOTING
===============

1. sxapi-myapi conflict name
   If you encounter a container name conflict, you can remove the running one ```docker rm -f sxapi-myapi``` or rename your container by changing the first line in docker-compose.yml file.
2. Port already allocated
   If you can't start your service using ```sxapi-cli start``` because of already alocated port it's probably linked to db container associated to this sample.
   You can stop the running container (see with ```docker ps```) or remove the *couchbase*, *mysql* and *redis* section in your docker-compose.yml. Your microservice will now start when running ```sxapi-cli start```
