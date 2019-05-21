# Intro to containers Workshop
This repository is a companion to a containers workshop that can be found [here](https://container.shader.works/).

## Exercise 1
The solution to the [first exercise](https://container.shader.works/exercise-1) in the workshop is given in `exercise-1.sh` script.

## Exercise 2
The solution to the [second exercise](https://container.shader.works/exercise-2) in the workshop is given in `exercise-2.sh` script.

## Exercise 3
The solution to the [third exercise](https://container.shader.works/exercise-3) in the workshop is given in `exercise-3.sh` script.

## Exercise 4
The solution to the [fourth exercise](https://container.shader.works/exercise-4) in the workshop is given in `Dockerfile` in the root folder of this repository. This `Dockerfile` can be build by:
```bash
docker build -f Dockerfile .
```

## Exercise 5
The solution to the [fifth exercise](https://container.shader.works/exercise-5) in the workshop is given in `Dockerfile` in the `react-app` folder. This `Dockerfile` can be build by:
```bash
cd react-app
docker build -f Dockerfile .
```
Once the image has been built, it can be run into a container by using the following command and found at `http://localhost:8082`:
```bash
docker run --name react-weather-app -p 8082:80 -d <imageID>
```

## Extra
The `wordpress` containers from [Exercise 3](#exercise-3) can be created more easily via Docker Compose by using the `docker-compose.yml` file. Before using this Docker Compose configuration, we need 2 folders, which can be created like so:
```bash
mkdir database
mkdir html
```
And, we need a docker external network which can be created like this:
```bash
docker network create web
```

Then, the containers defined in this file can be generated by:
```bash
docker-compose -f "docker-compose.yml" up -d
```
And to remove and destroy those containers:
```bash
docker-compose -f "docker-compose.yml" down
```