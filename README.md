[![Docker Build Statu](https://img.shields.io/docker/build/42bv/mkosi.svg)](https://hub.docker.com/r/42bv/mkosi/builds/) ![Docker Stars](https://img.shields.io/docker/stars/42bv/mkosi.svg) [![Docker Pulls](https://img.shields.io/docker/pulls/42bv/mkosi.svg)](https://hub.docker.com/r/42bv/mkosi/)

[![Docker - mkosi](https://github.com/42BV/docker-mkosi/blob/master/logo.png?raw=true)](https://github.com/systemd/mkosi)

## mkosi - Create legacy-free OS images

A fancy wrapper around dnf --installroot, debootstrap, pacstrap and zypper that may generate disk images with a number of bells and whistles.

Project homepage: https://github.com/systemd/mkosi 

---

### Supported tags and Dockerfile

- `latest` [(Dockerfile)](https://github.com/42BV/docker-mkosi/blob/master/Dockerfile)


### Pull  

Get the latest version:
```
docker pull 42bv/mkosi:latest
```

### Build  

Clone the repository:
```
git clone git@github.com:42BV/docker-mkosi.git
cd docker-mkosi
```

Build the current Dockerfile and tag the image:   
```
docker build -t mkosi .
```

### Run

Must be run with the `--privileged` flag:

```
docker run --tty --interactive --privileged --volume /dev:/dev --name=mkosi 42bv/mkosi:latest
```

To run a locally built image:
```
docker run --tty --interactive --privileged --volume /dev:/dev --name=mkosi mkosi:latest
```

To run a locally built image, mount the current directory and remove the container after building the image:
```
docker run --tty --interactive --privileged --rm --volume /dev:/dev --volume $(pwd):/root/mkosi --name=mkosi mkosi:latest
```

---

## License

Released under the [MIT license](https://github.com/42BV/docker-mkosi/blob/master/LICENSE.md).
