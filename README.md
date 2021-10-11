## Rebuild the container after any conf.d modification

```sh
docker-compose build --no-cache --force-rm webhosting
```

## Add a new certificate

```sh
docker-compose run -u 0 webhosting "certbot certonly -n --standalone -d <domain> --agree-tos --email <email>"
```

## Running the container

```sh
docker-compose up -d
```

## Accessing the container

```sh
docker-compose stop #container needs to be shut down due to network_mode=host

docker-compose run -u 0 webhosting sh
```
