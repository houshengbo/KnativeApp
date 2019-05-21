# KnativeApp

## Prerequisites:

```shell
DOCKER_REGISTRY_SERVER=index.docker.io
DOCKER_USER=Type your dockerhub username, same as when you `docker login`
DOCKER_EMAIL=Type your dockerhub email, same as when you `docker login`
DOCKER_PASSWORD=Type your dockerhub pw, same as when you `docker login`

kubectl create secret docker-registry knative-build-auth \
  --docker-server=$DOCKER_REGISTRY_SERVER \
  --docker-username=$DOCKER_USER \
  --docker-password=$DOCKER_PASSWORD \
  --docker-email=$DOCKER_EMAIL
```

## Build the source code of the application Hello World

Open a terminal, and go to the home directory of this project. 

To remove existing services, please run:

```shell
kubectl delete -f buildyaml/helloworld_service.yaml
```

Run the following command to build and image and launch the service:

```shell
kubectl apply -f buildyaml/helloworld_service.yaml
```

Each time, there is any change to the source of the Hello World application. Run the above commands to build the image, and
redeploy the service in the Kubernetes cluster, empowered by Knative capability.
