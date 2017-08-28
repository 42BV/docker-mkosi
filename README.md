[![Docker Build Statu](https://img.shields.io/docker/build/42bv/mkosi.svg)](https://hub.docker.com/r/42bv/mkosi/builds/) ![Docker Stars](https://img.shields.io/docker/stars/42bv/mkosi.svg) [![Docker Pulls](https://img.shields.io/docker/pulls/42bv/mkosi.svg)](https://hub.docker.com/r/42bv/mkosi/)

[![Docker - mkosi](https://github.com/42BV/mkosi/blob/master/logo.png?raw=true)](https://github.com/systemd/mkosi)

## mkosi - Create legacy-free OS images

A fancy wrapper around dnf --installroot, debootstrap, pacstrap and zypper that may generate disk images with a number of bells and whistles.

Project homepage: https://github.com/systemd/mkosi 

---

### Supported tags and Dockerfile

- `latest` [(Dockerfile)](https://github.com/42BV/mkosi/blob/master/Dockerfile)


### Pull  

Get the latest version:
```
docker pull 42bv/mkosi:latest
```

### Build  

Clone the repository:
```
git clone git@github.com:42BV/mkosi.git
cd mkosi
```

Build the current Dockerfile and tag the image:   
```
docker build -t mkosi .
```

### Run

Must be run with the `--privileged` flag:

```
docker run --tty --interactive --privileged --name=mkosi 42bv/mkosi:latest
```

---

## License

Released under the [MIT license](https://github.com/42BV/mkosi/blob/master/LICENSE.md).