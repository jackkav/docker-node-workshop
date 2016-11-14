## create docker image and run docker container which can point at a volume on jenkins
```bash
docker build -t jackkav/node-web-app-prod .
docker run -p 49190:8080 -d -m "300M" --memory-swap "1G" -v ~/git/docker-workshop/jenkins/workspace/node-to-docker/build:/usr/app/build -v ~/git/docker-workshop/jenkins/workspace/node-to-docker/node_modules:/usr/app/node_modules --name jenkins-node-ci  jackkav/node-ci
```
