# Ubuntu Container

Dockerfile using latest ubuntu image coming with a few essential packages.

## How to use
Where your Dockerfile is

1. `docker build -t $(whoami)/ubuntu-container .`

Where you want your container to have shared access to your disk

2. ```docker run -d -it -v `pwd`:/ubuntu-container/ --name $USER-ubuntu-container $(USER)/ubuntu-container```

Whenever you need to access your container's shell

3. `docker exec -it $USER-ubuntu-container bash`

After a reboot, you would need to start your container again:

`docker start $(USER)-ubuntu-container`


