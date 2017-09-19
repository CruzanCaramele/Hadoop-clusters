#!/bin/bash -eux

apt-get update -y
apt-get dist-upgrade -y

apt-get install -y ntp
service ntp start

