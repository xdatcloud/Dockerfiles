FROM rust:1.79-bullseye

COPY etc/apt/sources.list /etc/apt/sources.list
COPY .bashrc/rustup.envs /tmp/rustup.envs
COPY .cargo/config.toml /tmp/cargo-config.toml

RUN apt-get update && cat /tmp/rustup.envs >> ~/.bashrc && mkdir -p ~/.cargo && cat /tmp/cargo-config.toml > ~/.cargo/config.toml

USER admin

CMD sleep infinity
