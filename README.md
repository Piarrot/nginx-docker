## :warning: **Nginx Docker is not maintained**
This repository has been temporarily archived on 2024-14-05 for a lack of maintainance. We discurage any and all use use this tool for the time-beign, while we start a new working implementation

# Nginx Docker

## Rebuild the container after any conf.d modification

```sh
docker compose build --no-cache --force-rm webhosting
```

## Add a new certificate

```sh
docker compose run -u 0 webhosting certbot certonly -n --standalone -d <domain> --agree-tos --email <email>
```

## Running the container

```sh
docker compose up -d
```

## Accessing the container

```sh
docker compose stop #container needs to be shut down due to network_mode=host

docker compose run -u 0 webhosting sh
```
