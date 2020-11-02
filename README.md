# docker-mkcert
a docker image with mkcert utility installed

this docker contains an mkcert utility v1.4.2, pulled from their [release](https://github.com/FiloSottile/mkcert/releases/) branch

```
docker build -t docker-mkcert
docker run --rm -it docker-mkcert sh -c "mkcert -install"
```
