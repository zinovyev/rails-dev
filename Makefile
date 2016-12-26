all: build start 
build:
	docker-compose rm -f
	docker-compose build
	docker-compose run web bundle install
	docker-compose run web bundle exec rails new . --force --database=postgresql --skip-bundle
	cp -f database.yml.dist config/database.yml
	docker-compose run web bundle install
start:
	docker-compose up -d
	docker-compose run web bundle exec rails db:create
stop:
	docker-compose stop
