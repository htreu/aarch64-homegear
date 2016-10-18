# aarch64-homegear

Dockerfile for homegear on aarch64/ARMv8 machines. Provide '*.deb' files from the [homegear/build:ubuntu-xenial-arm64](https://hub.docker.com/r/homegear/build/tags/) docker container.
Example for obtaining the *deb files:
```
docker run -it -e HOMEGEARBUILD_SHELL=1 homegear/build:ubuntu-xenial-arm64
docker cp <container_id>:/build/. .
```
