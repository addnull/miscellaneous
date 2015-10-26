#!/usr/bin/env bash
set -e

apt-get -y install dnsmasq

cp /etc/dnsmasq.conf /etc/dnsmasq.conf.bak
echo 'address=/.mydomain.com/127.0.0.1' >> /etc/dnsmasq.conf

service dnsmasq restart
