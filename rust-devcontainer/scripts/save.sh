#!/usr/bin/env bash

docker save rust-devcontainer:latest | gzip > /tmp/rust-devcontainer-latest.tar.gz
