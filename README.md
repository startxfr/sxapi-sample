# sxapi-sample

Sample config file and modules for building microservices using sxapi project (latest) 

SXAPI
=====
SXAPI for Simple and eXtensible Application Programming Interface is an open-source project for building simple and small microservices quickly and efficiently.
see http://github..... for more information about SXAPI project

REQUIREMENTS
============
The only requirement for running theses samples and start using SXAPI is to have access to a docker host (local or remote), and git tool installed. 

Windows
-------
For git tools, you need to install [Git windows]
You need to run a docker runtime. For this, you can read [Docker windows]. We didn't try it, but will be pleased to get your report on any issue you could have.

Linux
-----
1. Run `git -v` to see if you have a git installed.
   if not, you can run `sudo yum install git`
2. Run `docker -v` to see if you have a docker installed.
   if not, you can run `sudo yum install docker; sudo service dockerd start; `
3. Run `docker ps` to see if you have acces to your docker daemon
   if not, you can run `sudo service docker start` or try to run this command with the root user
4. If you get a list of container, then perfect, you can use this sample


INSTALLING YOU ENVIRONEMENT
===========================
1. Install a clone of this project, on your server or local machine `git clone http://github.com/startxfr/sxapi-sample.git sxapi-sample`
2. Enter this directory `cd sxapi-sample`, and you will see sample directories `ls -la .`

Note : Github user, you can clone this repository to you account. Instead of using [http://github.com/startxfr/sxapi-sample.git], you could then use your own clone and trac all your own microservice builded on top of sxapi.


RUNNING A SAMPLE
================
Each directory represent a sample microservices. You have a list and a description of theses samples later in this page. If you want to run one of this example, 
you simply have to run this command :
`./run.sh hello`


SAMPLES
=======

Simple sample
-------------
