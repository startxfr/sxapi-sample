<img align="right" height="50" src="https://raw.githubusercontent.com/startxfr/sxapi-core/dev/docs/assets/logo.svg?sanitize=true">

# SXAPI examples : Single node, static content

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
