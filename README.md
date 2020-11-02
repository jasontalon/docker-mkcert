# docker-mkcert
a docker image with mkcert utility installed

this docker contains an mkcert utility v1.4.2, pulled from their [release](https://github.com/FiloSottile/mkcert/releases/) branch


Build a the docker-mkcert in your local image repository.
```
docker build -t docker-mkcert .
```

Run the utility inside the created image. In this example it generates a CA and creates certificate for example.com and saves it into the current directory (through docker volume)
```
docker run --rm -v %cd%:/app -it docker-mkcert sh -c "mkcert -install && mkcert example.com"
```

See the [mkcert git repository](https://github.com/FiloSottile/mkcert) for more info of the commands.
