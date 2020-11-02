# docker-mkcert
a docker image with mkcert utility installed

```
docker build -t docker-mkcert
docker run --rm -it docker-mkcert sh -c "mkcert -install"
```
