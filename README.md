# docker-mkcert

## What
A minimal docker image (debian-slim) with mkcert utility installed. 

This docker contains an mkcert utility, pulled from mkcert [releases/tag/v1.4.2](https://github.com/FiloSottile/mkcert/releases/tag/v1.4.2)

## Why
This is for me (and for you) to avoid installing mkcert into your local development. Basically, I don't want to install Chocolatey or install unknown .exe in my local development machine. This is the most simplest way to generate certs, through Docker.

## How
Build a the docker-mkcert in your local image repository.
```
docker build -t docker-mkcert .
```

Run the utility inside the created image. In this example it generates a CA and creates certificate for example.com and saves it into the current directory (through docker volume)
```
docker run --rm -v %cd%:/app -it docker-mkcert sh -c "mkcert -install && mkcert example.com"
```

See the [mkcert repository](https://github.com/FiloSottile/mkcert) for more info of the commands.
