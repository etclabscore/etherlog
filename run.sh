#!/usr/bin/env bash

chmod go-w filebeat/filebeat.docker.yml
docker-compose build && \
docker-compose up
