# docker-mkcert
a docker image with mkcert utility installed

this docker contains an mkcert utility v1.4.2, pulled from their [release](https://github.com/FiloSottile/mkcert/releases/) branch


Build a the docker-mkcert in your local image repository.
```
docker build -t docker-mkcert .
```

Run the utility inside the created image
```
docker run --rm -it docker-mkcert sh -c "mkcert -install"
```
