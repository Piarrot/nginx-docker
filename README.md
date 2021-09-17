## Running the container

```sh
#Re-build the app container with new config
docker-compose build --no-cache --force-rm webhosting

#Start the app
docker-compose up -d
```

## Accessing the container

```sh
docker-compose run -u 0 webhosting sh
```
