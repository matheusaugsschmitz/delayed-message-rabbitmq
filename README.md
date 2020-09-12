# Description
Project created to provide a plug'n'play RabbitMQ image with the management GUI and delayed message exchange plugins.

# How to use this image
## Using Docker Hub
[Docker Hub project](https://hub.docker.com/repository/docker/matheusaugusto/rabbitmq-delayed-message)

```
$ docker run -d --name rabbitmq -p 15672:15672 -p 5672:5672  matheusaugusto/rabbitmq-delayed-message:3.8.0
```

## Using this repo

First of all, build the image from Dockerfile:
>Make sure you are inside the project's directory before run the command below
```
$ docker image build . --tag 'rabbitmq-delayed-message:3.8.0'
```

Than create your RabbitMQ container:
```
$ docker run -d --name rabbitmq -p 15672:15672 -p 5672:5672 rabbitmq-delayed-message:3.8.0
```


# Sources
 - [Delayed Message Exchange Plugin (GitHub Project)](https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/)
 - [Base RabbitMQ 3.8.x-management image (here you can find more info about to how setup the RabbitMQ stuffs)](https://hub.docker.com/_/rabbitmq)