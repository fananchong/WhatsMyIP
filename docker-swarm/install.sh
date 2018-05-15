#!/bin/bash

set -ex

docker stack deploy -c ./stack.yml whatsmyip
