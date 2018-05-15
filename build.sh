#/bin/bash

set -ex

set CURPATH=$PWD

docker run -it --rm -v "$PWD":/go/src/whatsmyip -w /go/src/whatsmyip golang go build .

mv -f whatsmyip docker/

cd docker

docker build -t fananchong/whatsmyip .

rm -f whatsmyip

cd $CURPATH
