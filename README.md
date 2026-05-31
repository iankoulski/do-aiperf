# do-aiperf
Run NVIDIA [aiperf](https://github.com/ai-dynamo/aiperf) in a container using the [do-framework](https://bit.ly/do-framework)


# Container project description


This is a Depend on Docker project which comes operational out of the box 
and is configured with reasonable defaults, which can be customized as needed.

# Usage

## Locally

```bash
docker run -it --rm iankoulski/do-aiperf bash
```

## On Kubernetes

```bash
kubectl run -ti --rm do-aiperf --image iankoulski/do-aiperf -- bash
```

## In project

```bash
git clone https://github.com/iankoulski/do-aiperf
```

The project contains the following scripts:
* `config.sh` - open the configuration file .env in an editor so the project can be customized. Set TO to docker or kubernetes.
* `build.sh` - build the container image
* `test.sh` - run container unit tests
* `push.sh` - push the container image to a registry
* `pull.sh` - pull the container image from a registry
* `run.sh [cmd]` - run the container, passing an argument overrides the default command
* `status.sh` - show container status - running, exited, etc.
* `logs.sh` - tail container logs
* `exec.sh [cmd]` - open a shell or execute a specified command in the running container
