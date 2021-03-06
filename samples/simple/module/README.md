<img align="right" height="50" src="https://raw.githubusercontent.com/startxfr/sxapi-core/dev/docs/assets/logo.svg?sanitize=true">

# sxapi simple personalized dynamic example

This section show you a sample config file for building a simple microservice 
with a dynamic response from a developed function. 
This sample must be used with 
[sxapi-core framework](https://github.com/startxfr/sxapi-core) and you should
read 
[sxapi-core documentation](https://github.com/startxfr/sxapi-core/tree/master/docs) 
before browsing this section 

Running this sample
-------------------

```bash
// create a working directory
mkdir test; mkdir test/modules; cd test
// download a copy of this example
wget https://raw.githubusercontent.com/startxfr/sxapi-sample/master/samples/simple/module/sxapi.json
cd modules; wget https://raw.githubusercontent.com/startxfr/sxapi-sample/master/samples/simple/module/modules/module.js; cd -
// update docker image
docker pull startx/sxapi:latest
// start application with this config file
docker run -d -v $(pwd)/sxapi.json:/conf/sxapi.json:ro -v $(pwd)/modules:/app/modules:ro startx/sxapi:latest
```
