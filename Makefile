all: build start 
build:
	docker-compose build
	docker-compose run web bundle install
	docker-compose run web bundle exec rails new . --force --database=postgresql --skip-bundle
	sudo chown -R $$USER:$$USER .
start:
	docker-compose up
	docker-compose run web bundle exec rails db:create
stop:
	docker-compose stop
