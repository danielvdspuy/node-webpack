[![Build Status](https://travis-ci.org/danielvdspuy/node-webpack.svg?branch=master)](https://travis-ci.org/danielvdspuy/node-webpack) [![Docker build status](https://img.shields.io/docker/pulls/danielvdspuy/node-webpack.svg)]()

# node-webpack

## Usage

Watch another container’s app folder using `docker-compose` and a shared volume

### Example docker-compose.yml
```yaml
version: '2'

services:

  nginx:
    image: my-server-image
    ports:
      - "80:80"
    volumes:
      - ./path/to/host/app:/var/www
      - app-volume:/var/www

  webpack:
    image: danielvdspuy/node-webpack:latest
    ports:
      - "35729:35729"
    volumes:
      - app-volume:/usr/src/app/

volumes:
  app-volume:

```
