# How to use it #

## Pre Requisites ##

- Docker
- NPM

## Getting documentation base container update ##

To update documentation base container, user need to run following npm command from the folder where the documentation package.json file is.

```bash
npm run docker:docServiceUpdate
```

## Build your docker container for use ##

Build need to happen in three cases.

1. When you first got the base container
2. When you update docker base documentation container.
3. When you want to test the documentation pushed to Stash repository.

in config.yml/config.json file, we are using  the repository URL pointing to stash.verizon.com. Which will not work if you are testing documentation outside of our environment. To test it out out side of environment, you need to have a git repository with the same folder structure as ours and update the git link in config.yml or config.json. 

Decission on which file to be used is based on what file you use in Dockerfile when you are copying the configuration files to the container. By default when we set it up, it will be config.yml. 

to build docker container for your documentation run below command from terminal.

```bash
npm run docker:build
```

## Test your documentaiton while writing it ##

This must be run only after building the docker container atleast ones. To check if you built it atleast ones, you can run below command and check if there is an image in the format of localhost:5000/irvui/ts-docs-{appname}, where app name is your documentation set name.

```bash
docker images
```

```bash
npm run docker:develop
```

## To stop running docker container ##

There will be two types of runs that might have happened.

1. When you started it thru "npm run docker:develop" which will run in the terminal in interactive mode which you can just kill it by pressing " CTRL + C ".
2. When you started it thru "npm run docker:start", This will be giving you content that is checked in to stash or a git repository. To stop this container you need to run "npm run docker:stop".


## Cant figure how to kill these things {docker containers} ##

first kill all running docker containers and clean all stopped containers.

```bash
docker ps -q -a | xargs docker rm -f
```

Then remove all local images to clean up. If you do this, you have to re-run "npm run docker:docServiceUpdate"

```bash
docker images -q | xargs docker rmi
```


