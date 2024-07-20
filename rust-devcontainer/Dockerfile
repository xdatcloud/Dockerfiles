FROM ubuntu:24.04

ENV DEBIAN_FRONTEND noninteractive

COPY etc /tmp/etc
COPY rustup /tmp/rustup
COPY .cargo /tmp/.cargo

RUN useradd -r -m -d /home/admin -s /bin/bash -g root -G sudo -u 505 admin \
    && passwd -d admin \
    && cp /tmp/etc/apt/sources.list.d/ubuntu.sources /etc/apt/sources.list.d/ubuntu.sources \
    && cp /tmp/etc/apt/sources.list.d/third-party.sources /etc/apt/sources.list.d/third-party.sources \
    && apt-get update \
    && apt-get install -y sudo build-essential protobuf-compiler git curl

USER admin
WORKDIR /home/admin

RUN cat /tmp/rustup/bashrc.sh >> $HOME/.bashrc \
    && . /tmp/rustup/bashrc.sh \
    && sh /tmp/rustup/installer.sh -v -y \
    && cat /tmp/.cargo/config.toml > $HOME/.cargo/config.toml \
    && . $HOME/.cargo/env \
    && rustup component add rust-analyzer

CMD sleep infinity
