# USE sxapi with npm

You can use sxapi with our 
[official sxapi NPM module](https://www.npmjs.com/package/sxapi-core)

### Application with default configuration

1. Create your working environment
```bash
mkdir test
cd test
npm install sxapi-core
```

2. Create a file named app.js and add the following lines
```javascript
var sxapi = require("sxapi-core");
sxapi.app.launch(function () {
    sxapi.app.log.info("application started", sxapi.app.timer.time('app'));
});
```

3. Start your application
```bash
node app.js
```

4. Connect to ```http://localhost:8080``` with your favorite navigator


### Application with your own configuration

1. Create your working environment
```bash
mkdir test
cd test
npm install sxapi-core
```

2. Create a file named app.js and add the following lines
```javascript
var sxapi = require("sxapi-core");
sxapi.app.launch(function () {
    sxapi.app.log.info("application started", sxapi.app.timer.time('app'));
});
```

```
3. Create a file named sxapi.json and edit it with the following content
```javascript
{
    "name": "sample-api",
    "description": "my sample api using sxapi-core framework",
    "version": "0.0.0",
    "debug": true,
    "log": {
        "filters": {
            "level": "0,1,2,3,4",
            "type": "debug,info,error,warn"
        }
    },
    "server": {
        "endpoints": [
            {
                "path": "/",
                "body": "<html><head></head><body><h1>My API</h1></body></html>"
            }
        ]
    }
}
```

4. Start your application
```bash
node app.js
```

4. Connect to ```http://localhost:8080``` with your favorite navigator


### Application with your own configuration (using npm)

1. Create your working environment
```bash
mkdir test
cd test
npm install sxapi-core
```

2. Create a file named app.js and add the following lines
```javascript
var sxapi = require("sxapi-core");
sxapi.app.launch(function () {
    sxapi.app.log.info("application started", sxapi.app.timer.time('app'));
});
```

3. Create a file named package.json and add the following lines
```javascript
{
  "name": "sample-api",
  "version": "0.0.0",
  "description": "sample api using sxapi-core framework (see https://github.com/startxfr/sxapi-core)",
  "author": "Yourname <youremail@yourdomain.com>",
  "license": "Apache-2.0",
  "main": "app.js",
  "dependencies": {
    "sxapi-core": "~0.0.17"
  }
}
```

```
3. Create a file named sxapi.json and edit it with the following content
```javascript
{
    "name": "sample-api",
    "description": "my sample api using sxapi-core framework",
    "version": "0.0.0",
    "debug": true,
    "log": {
        "filters": {
            "level": "0,1,2,3,4",
            "type": "debug,info,error,warn"
        }
    },
    "server": {
        "endpoints": [
            {
                "path": "/",
                "body": "<html><head></head><body><h1>My API</h1></body></html>"
            }
        ]
    }
}
```

4. Start your application
```bash
npm start
```

4. Connect to ```http://localhost:8080``` with your favorite navigator



