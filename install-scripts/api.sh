#!/bin/bash
while [ TRUE ]
do
    echo "Run api...."

    sudo -H -u ubuntu bash -c /home/ubuntu/runapi.sh

    echo "Reboot in 10 seconds..."
    sleep 10
done