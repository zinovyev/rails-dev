all: build start 
build:
	docker-compose run web rails new . --force --database=postgresql --skip-bundle
	sudo chown -R $USER:$USER .
start:
	docker-compose build
	docker-compose up
	docker-compose run web rails db:create
