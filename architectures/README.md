<img align="right" height="50" src="https://raw.githubusercontent.com/startxfr/sxapi-core/dev/docs/assets/logo.svg?sanitize=true">

# SXAPI : Architecture examples

Discover various form of sxapi architecture to find out how to build your API or your 
microservice oriented application.

## API Server examples

- [single node, static content](single-node-static/README.md) 
  One single container deliver static content 
```
    .-,(  ),-.                        .--------.
 .-(          )-.                     |  app   |                        .------------.
(    internet    )<-------------------| sxapi  |----------------------->| app-vol    |
 '-(          ).-'                    '--------'                        '------------'
     '-.( ).-'    

```
- [multiple node, same static content](multiple-node-static/README.md) 
  Two container deliver the same static content 
```
                                      .--------.
                                    .>|  app1  |--------------------.
    .-,(  ),-.        .----------.  | | sxapi  |                    |   .------------.
 .-(          )-.     | balancer |--' '--------'                    .-->| app-vol    |
(    internet    )<---| ngnix    |--. .--------.                    |   '------------'
 '-(          ).-'    '----------'  | |  app2  |                    |
     '-.( ).-'                      '>| sxapi  |--------------------'
                                      '--------'

```
- [multiple node, multiple static content](single/README.md) 
  Two container deliver two differents static content and one load balander dispatch 
  request to the appropriate application
```
                                      .--------.
                                    .>|  app1  |--------------------.   .------------.
    .-,(  ),-.        .----------.  | | sxapi  |                    '-->| app1-vol   |
 .-(          )-.     | balancer |--' '--------'                        '------------'
(    internet    )<---| ngnix    |--. .--------.                        .------------.
 '-(          ).-'    '----------'  | |  app2  |                    .-->| app2-vol   |
     '-.( ).-'                      '>| sxapi  |--------------------'   '------------'
                                      '--------'

```
- [multiple node, same backend](single/README.md) 
  Two container linked to the same database and one load balander balance request
```
                                      .--------.
                                    .>|  app1  |--.
    .-,(  ),-.        .----------.  | | sxapi  |  |  .-----------.
 .-(          )-.     | balancer |--' '--------'  '->|    db1    |      .------------.
(    internet    )<---| ngnix    |--. .--------.  .->| mysql     |----->|  db1-vol   |
 '-(          ).-'    '----------'  | |  app2  |  |  '-----------'      '------------'
     '-.( ).-'                      '>| sxapi  |--'
                                      '--------'

```
- [single node, multiple backend](single/README.md) 
  One container linked to two databases and one load balander balance request to application
```
                                                     .-----------.
                                                  .->|    db1    |      .------------.
    .-,(  ),-.        .----------.    .--------.  |  | mysql     |----->|  db1-vol   |
 .-(          )-.     | balancer |    |  app1  |--'  '-----------'      '------------'
(    internet    )<---| ngnix    |--->| sxapi  |--.  .-----------.
 '-(          ).-'    '----------'    '--------'  |  |    db2    |      .------------.
     '-.( ).-'                                    '->| couchbase |----->|  db2-vol   |
                                                     '-----------'      '------------'

```
- [multiple node, multiple backend](single/README.md) 
  Two container linked to two databases, one cloud service and one load balander balance request to application
```
                                      .--------.     .-----------.
                                    .>|  app1  |     |    db1    |      .------------.
    .-,(  ),-.        .----------.  | | sxapi  |---->| mysql     |----->|  db1-vol   |
 .-(          )-.     | balancer |--' '--------' \ / '-----------'      '------------'
(    internet    )<---| ngnix    |--. .--------.  \  .-----------.
 '-(          ).-'    '----------'  | |  app2  | / \ |    db2    |      .------------.
     '-.( ).-'                      '>| sxapi  |---->| couchbase |----->|  db2-vol   |
                                      '--------'     '-----------'      '------------'
                                           |             .-,(  ),-.    
                                           |          .-(          )-. 
                                           '-------->(     DBaaS      )
                                                      '-(          ).-'
                                                          '-.( ).-'    
```

## Bot examples

- [single node bot message client](single/README.md) 
  One container without exposed webserver but reading a message queue and perform
  action when a message match a listened pattern
```
                          .-----------.
              .---------->|    db1    |      .------------.
.--------.    |           | mysql     |----->|  db1-vol   |
|  app1  |----'           '-----------'      '------------'
| sxapi  |<---.            .-,(  ),-.    
'--------'    |         .-(          )-. 
              '--------(  Message Bus   )
                        '-(          ).-'
                            '-.( ).-'    
```
- [single node bot cron scheduler](single/README.md) 
  One container without exposed webserver but executing task at a periodic time
```
                          .-----------.
              .---------->|    db1    |      .------------.
.--------.    |           | mysql     |----->|  db1-vol   |
|  app1  |----'           '-----------'      '------------'
| sxapi  |----.             .-,(  ),-.    
'--------'    |          .-(          )-. 
  time        '-------->(  Message Bus   )
                         '-(          ).-'
                             '-.( ).-'    
```