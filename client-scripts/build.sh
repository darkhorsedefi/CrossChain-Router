#!/bin/bash
WORKDIR=/home/ubuntu/CrossChain-Router
if [[ -f $WORKDIR/build/bin/swaprouter ]]
then
    echo "Remove old API build"
    unlink $WORKDIR/build/bin/swaprouter
fi
echo "Make new API build"
cd $WORKDIR
/usr/local/go/bin/go run $WORKDIR/build/ci.go install $WORKDIR/cmd/swaprouter

