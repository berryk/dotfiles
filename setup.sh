#!/bin/bash

printf "deb http://ftp.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/backports.list

apt-get update
apt-get upgrade

apt-get install -qy tilix dbus-x11

