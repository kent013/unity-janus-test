#!/bin/bash
if [ $# != 1 ]; then 
  echo "needs 1 argument"
  exit 1
fi
if [ $1 == "down" ] || [ $1 == "d" ]; then
  docker-compose down
elif [ $1 == "down" ] || [ $1 == "v" ]; then
  docker-compose down --volumes --remove-orphans
elif [ $1 == "down-all" ] || [ $1 == "a" ]; then
  docker-compose down --rmi all --volumes --remove-orphans
elif [ $1 == "mysql-m1" ] || [ $1 == "m" ]; then
  docker pull --platform linux/amd64 mysql:latest
elif [ $1 == "up" ] || [ $1 == "u" ]; then
  docker compose up
elif [ $1 == "web" ]; then
  docker exec -it unity-janus-test_janus-web_1 bash
fi
