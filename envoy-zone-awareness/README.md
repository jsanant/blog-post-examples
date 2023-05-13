## Overview

The folder contains a full working example for the Envoy AZ awareness blog post.

## Prerequisites

- [Docker](https://www.docker.com/)

## Getting started

- Clone the repo

```
git clone https://github.com/jsanant/blog-post-examples.git
```

- Run the following commands

```
$ cd blog-post-examples/envoy-zone-awareness
$ docker build . -t zone-awareness
$ docker-compose -f docker-compose.yaml up -d
```

- This will bring up three docker containers with envoy and a flask application running in it.

## Clean up

Once you are done, you can run `docker-compose -f docker-compose.yaml down` to remove the containers.
