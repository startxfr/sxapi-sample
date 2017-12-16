[![sxapi](https://raw.githubusercontent.com/startxfr/sxapi-core/dev/docs/assets/logo.svg?sanitize=true)](https://github.com/startxfr/sxapi-core)

# sxapi-core examples ![sxapi](https://img.shields.io/badge/latest-v0.0.66-blue.svg)

This repository store various samples files for configuring API microservices 
powered by [sxapi-core framework](https://github.com/startxfr/sxapi-core)

[![Build Status](https://travis-ci.org/startxfr/sxapi-sample.svg?branch=dev)](https://travis-ci.org/startxfr/sxapi-sample)
[![docker build](https://img.shields.io/docker/build/startx/sxapi.svg)](https://hub.docker.com/r/startx/sxapi/) 
[![npm version](https://badge.fury.io/js/sxapi-core.svg)](https://www.npmjs.com/package/sxapi-core) 
[![npm dependencies](https://david-dm.org/startxfr/sxapi-core.svg)](https://www.npmjs.com/package/sxapi-core) 
[![last commit](https://img.shields.io/github/last-commit/startxfr/sxapi-core.svg)](https://github.com/startxfr/sxapi-core) 
[![licence](https://img.shields.io/github/license/startxfr/sxapi-core.svg)](https://github.com/startxfr/sxapi-core) 


# sxapi project

**sxapi** for **s**imple and e**x**tensible **api** (Application Programming Interface) is an an open-source framework for quickly building simple and small API based on microservice architecture.

Very light (application less than 100Ko, full container stack for less than 30Mo) and configured with a single json file, you can build instantly small atomic API endpoints as well as fully featured enterprise-sized API.

see [sxapi-core project](https://github.com/startxfr/sxapi-core) for more information about this framework

# running an example

You will find configuration samples in [samples/](samples/) directory. 
Every sample have a README file describing how you can run this sample. Please
follow the described steps to see the running sample

- [samples](samples/) Various configuration examples
  - [AWS](aws/) Configuration examples using AWS services
  - [DB](db/) Configuration examples using Database backends
  - [full](full/) Configuration example using all features
  - [simple](simple/) Configuration examples using simple endpoints
  - [websocket](websocket/) Configuration example with websocket connection
