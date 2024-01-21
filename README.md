# WaveConnect
## App Details
![RSpec](https://github.com/xavius-rb/Wave-Connect/actions/workflows/ci.yml/badge.svg)

## Setup

Build the app image:
```
docker compose build
```
Or
```
docker build -t wave .
```

Start the app:
```
docker compose up -d
```

### Attached Resources (Containers)

* postgreSQL
```
docker run --rm --name postgres --network-alias postgres --network wave_network -e POSTGRES_PASSWORD=dbpassword -e POSTGRES_USER=dbuser -e POSTGRES_INITDB_ARGS="--username=dbuser" -d postgres:16-alpine
```
* Redis
```
docker run --rm --name redis --network wave_network --network-alias redis -d redis:7-alpine
```
* Web Container
```
docker run --rm --network wave_network --name wave_app -p 3000:3000 -e RAILS_ENV=development -e REDIS_URL=redis://redis:6379/0 -e DATABASE_URL="postgresql://dbuser:dbpassword@postgres:5432/wave?" wave:latest
```