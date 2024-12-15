#!/bin/bash
PROJECT_DIR=$(pwd)

yes | wget -O /tmp/netdata-kickstart.sh https://get.netdata.cloud/kickstart.sh && sh /tmp/netdata-kickstart.sh --stable-channel --disable-telemetry
cp $PROJECT_DIR/netdata.conf /etc/netdata/netdata.conf
cp $PROJECT_DIR/custom_alerts.conf /etc/netdata/health.d/custom_alerts.conf

systemctl restart netdata