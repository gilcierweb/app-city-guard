# Project App City Guard

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

### Skills

- Ruby 3.2.1
- Ruby on Rails 7.0+
- PostgreSQL
- Redis
- Javascript
- Stimulus.js
- HTML
- CSS
- Bootstrap 5+
- Esbuild
- Docker
- Docker Compose

### Run App in Development

```shell
./bin/dev
# run http://localhost:3000
```

### Run App with Docker and Docker Compose

```shell
docker-compose build
docker-compose up # run http://localhost:3000
 
docker-compose up --build # run http://localhost:3000

# Optional
docker-compose ps
docker-compose stop
docker-compose down
docker-compose run --rm app rails db:create
docker-compose run --rm app rails db:setup db:migrate 
docker-compose run --rm app rails db:migrate 
docker-compose run --rm app rails db:seed 
docker-compose run --rm app rails console
docker-compose run --rm app rails rspec
docker-compose run --rm app rails rubocop
docker-compose run --rm app bash
docker-compose run --rm app bundle install
docker-compose run --rm app yarn install --check-files 

# run http://localhost:3000
```

```text
App
  Admin
  Login
  API Mobile
  App Flutter
  Job Microservices Golang
``` 