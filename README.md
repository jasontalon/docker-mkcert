# docker-mkcert

## What
A minimal docker image (debian-slim) with mkcert utility installed. 

This docker contains an mkcert utility, pulled from mkcert [releases/tag/v1.4.2](https://github.com/FiloSottile/mkcert/releases/tag/v1.4.2)

## Why
This is for the developer to avoid installing mkcert and its pre-requisites into local development machine. 

## How
Build docker-mkcert in your local image repository.
```
docker build -t docker-mkcert .
```

Run the utility inside the created image. In this example it generates a CA and creates certificate for example.com and saves it into the current directory (through docker volume)
```
docker run --rm -v %cd%:/app -it docker-mkcert sh -c "mkcert -install && mkcert example.com"
```

See the [mkcert repository](https://github.com/FiloSottile/mkcert#advanced-topics) for more info of the commands.
