sxapi full example
==================

This section show you a sample config file for building a microservice 
based on various external service. 
This sample must be used with 
[sxapi-core framework](https://github.com/startxfr/sxapi-core) and you should
read 
[sxapi-core documentation](https://github.com/startxfr/sxapi-core/tree/v0.0.57-docker/docs) 
before browsing this section 

Running this sample
-------------------

```bash
// create a working directory
mkdir test; cd test
// download a copy of this example
wget https://raw.githubusercontent.com/startxfr/sxapi-sample/v0.0.57/samples/full/sxapi.json
// update docker image
docker pull startx/sxapi:0.0.57
// start application with this config file
docker run -d -v $(pwd)/sxapi.json:/conf/sxapi.json:ro startx/sxapi:0.0.57
```
