#/bin/bash

docker run -it --rm -v "$PWD":/go/src/whatsmyip -w /go/src/whatsmyip golang go build .
