FROM fedora:latest

LABEL maintainer="Terence Westphal"

# Install dependencies
RUN dnf install -y \
    arch-install-scripts \
    btrfs-progs \
    debootstrap \
    dosfstools \
    edk2-ovmf \
    git \
    squashfs-tools \
    gnupg \
    python3 \
    python3-setuptools \
    tar \
    util-linux-user \
    veritysetup \
    xz \
    zypper \
# Add some necesary packages to fix bugs:
    e2fsprogs \
    systemd-container

# Add necesary dir or docker build fails
Run mkdir -p /usr/local/lib/python3.6/site-packages/
# Install mkosi
RUN git clone https://github.com/systemd/mkosi.git /tmp/mkosi \
    && cd /tmp/mkosi \
    && ./setup.py install

# Workdir
WORKDIR /root/mkosi
VOLUME /root/mkosi /root/.ssh

ENTRYPOINT ["/usr/bin/bash"]
