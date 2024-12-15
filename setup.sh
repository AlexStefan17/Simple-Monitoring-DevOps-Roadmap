#!/bin/bash
PROJECT_DIR=$(pwd)

wget -O /tmp/netdata-kickstart.sh https://get.netdata.cloud/kickstart.sh
chmod +x /tmp/netdata-kickstart.sh
yes | sh /tmp/netdata-kickstart.sh --stable-channel --disable-telemetry

cp $PROJECT_DIR/netdata.conf /etc/netdata/netdata.conf
cp $PROJECT_DIR/custom_alerts.conf /etc/netdata/health.d/custom_alerts.conf

systemctl restart netdata

echo "Netdata installation and configuration complete."
