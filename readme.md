## Laravel echo server 

Laravel Echo Server is a project by [tlaverdure](https://github.com/tlaverdure/laravel-echo-server) this is just a docker wrapper!

To get this party started we have to setup the echo server as usual
running in a docker container doesnt make it much more of a chore than usual.

### Default config

The default config is just to get you started. if you want to do something exciting you sooner or later want to use your own config.

this assumes that you have a laravel-echo-server.json in your current directory

Docker compose (Recommended)
```yaml
version: "3"
services:
    echoserver:
        image: xantios/echo-server
        volumes:
          - .:/app
    redis:
        image: redis:latest
```

Or just running a container
```bash 
    docker run -ti -v $PWD:/app xantios/echo-server 
```

### Redis
The default config and setup does not container docker
if you want to use docker, set up your own docker container or use the example above

Make sure you set your databaseConfig in the json file, if you use compose the hostname is the name of the tag in the compose file

```json
  "databaseConfig" : {
    "redis" : {
      "port": "3001",
      "host": "redis"
    }
  }
```