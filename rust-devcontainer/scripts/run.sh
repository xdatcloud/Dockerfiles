#!/usr/bin/env bash

docker run --name=rust-devcontainer --platform=linux/amd64 -d -v /:/host rust-devcontainer:latest
