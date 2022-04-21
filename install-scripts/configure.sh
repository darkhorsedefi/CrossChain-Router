#!/bin/bash

if [ "$1" == "help" ]
then
    echo "configure.sh ChainId ConfigAddress PrivateKey"
    exit
fi

CHAINID=$1
CONFIG=$2
KEY=$3
RUN_FILE=/home/ubuntu/runapi.sh
WORKDIR=/home/ubuntu/CrossChain-Router

echo "#!/bin/bash" > $RUN_FILE
echo "cd $WORKDIR" >> $RUN_FILE
echo "$WORKDIR/build/bin/swaprouter --datadir $WORKDIR/build/bin/ --config $WORKDIR/../config.toml --configchain $CHAINID --configaddress $CONFIG --privatekey $KEY --runserver" >> $RUN_FILE
chown ubuntu:ubuntu $RUN_FILE
chmod +x $RUN_FILE
echo "Configuration - [OK]"