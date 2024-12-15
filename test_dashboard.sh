#!/bin/bash

apt update
apt install stress -y

stress -c 4 --timeout 120

echo "System stress tests completed. Check your Netdata dashboard for the results."