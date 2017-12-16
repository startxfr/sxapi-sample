<img align="right" height="50" src="https://raw.githubusercontent.com/startxfr/sxapi-core/dev/docs/assets/logo.svg?sanitize=true">

# sxapi simple json static example

This section show you a sample config file for building a simple microservice 
with a static json response. 
This sample must be used with 
[sxapi-core framework](https://github.com/startxfr/sxapi-core) and you should
read 
[sxapi-core documentation](https://github.com/startxfr/sxapi-core/tree/master/docs) 
before browsing this section 

Running this sample
-------------------

```bash
// create a working directory
mkdir test; cd test
// download a copy of this example
wget https://raw.githubusercontent.com/startxfr/sxapi-sample/dev/samples/simple/json/sxapi.json
// update docker image
docker pull startx/sxapi:latest
// start application with this config file
docker run -d -v $(pwd)/sxapi.json:/conf/sxapi.json:ro startx/sxapi:latest
```