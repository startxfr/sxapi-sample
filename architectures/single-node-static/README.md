<img align="right" height="50" src="https://raw.githubusercontent.com/startxfr/sxapi-core/dev/docs/assets/logo.svg?sanitize=true">

# SXAPI examples : Single node, static content

Whe asume you are familiar with the sxapi project and it component. If not, you can
read the [official documentation](https://github.com/startxfr/sxapi-core/README.md) before
trying these samples

## Use case

Whe whan't to use sxapi to deliver a simple like a clasic http webserver. The content will 
be stored into a container volume.

## Architecture

```
    .-,(  ),-.                        .--------.
 .-(          )-.                     |  app   |                        .------------.
(    internet    )<-------------------| sxapi  |----------------------->| app-vol    |
 '-(          ).-'                    '--------'                        '------------'
     '-.( ).-'    

```

## Configuration

### sxapi.json

```javascript
{
    "name": "myservice",
    "description": "my service",
    "version": "dev",
    "server": {
        "static": true,
        "static_path": "/static",
        "static_dir": "/data",
        "endpoints": [
            {
                "path": "/",
                "header": {
                    "Content-Type": "text/plain"
                },
                "body": "my service. Go to /static to get data from volume"
            }
        ]
    }
}

```

### docker-compose.yml

```yaml
app:
  image: startx/sxapi:0.0.76
  container_name: "my-service"
  volumes:
    - "./static:/data:rw"
    - "./sxapi.json:/conf/sxapi.json:ro"
```