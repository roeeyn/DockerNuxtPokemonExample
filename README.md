# Nuxt Pokemon Example

> Example Project using simpleNuxt with express and axios

## Build Setup

``` bash
# install dependencies
$ yarn install

# serve with hot reload at localhost:3000
$ yarn run dev

# build for production and launch server
$ yarn run build
$ yarn start

# generate static project
$ yarn run generate

# generate Docker image
$ docker build . -t pokemon-example

# run Docker image
$ docker run -p 80:3000 --name pokemon-container pokemon-example

```

## Push your image to Docker Cloud
``` bash
# export your username to a environmental variable
$ export DOCKER_ID_USER="username"

# login into Docker Cloud
$ docker login

# tag your image with your username
$ docker tag $DOCKER_ID_USER/my_image

# push your image to Docker Cloud
$ docker push $DOCKER_ID_USER/my_image

```


For detailed explanation on how things work, checkout [Nuxt.js docs](https://nuxtjs.org).
