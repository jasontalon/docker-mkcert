# docker-mkcert
A docker image with mkcert utility installed

This docker contains an mkcert utility v1.4.2, pulled from mkcert [releases](https://github.com/FiloSottile/mkcert/releases/)


Build a the docker-mkcert in your local image repository.
```
docker build -t docker-mkcert .
```

Run the utility inside the created image. In this example it generates a CA and creates certificate for example.com and saves it into the current directory (through docker volume)
```
docker run --rm -v %cd%:/app -it docker-mkcert sh -c "mkcert -install && mkcert example.com"
```

See the [mkcert repository](https://github.com/FiloSottile/mkcert) for more info of the commands.
