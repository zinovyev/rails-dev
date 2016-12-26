# Rails development environment

## About
It's a simple bootstrap to get a new Rails development environment up and running.
To get more information about running Rails environment with docker-compose take a look at official [Compose and Rails](https://docs.docker.com/compose/rails/) tutorial.

## Set Up And Run
First you have to install docker and docker-compose. Here're some good guides to doing it depending on the OS you're running:
* [Docker installation guides](https://docs.docker.com/engine/installation);
* [Docker-compose installation guides](https://docs.docker.com/compose/install/);

To **create a new application** from the bootstrap assuming that your project's name is `your-project` run:
```bash
git clone --depth 1 git://github.com/zinovyev/rails-dev.git your-project
cd your-project
make
```
Now you can visit your fresh rails installation on `localhost:3000`.

To **stop application** use:
```bash 
cd your-project
make stop
```
To **start application** use:
```bash
cd your-project
make start
```
