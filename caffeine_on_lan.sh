#!/bin/sh

target=$1

sleep 600 # Don't do anything unless power is stable

while ! ping -c 1 ${target}
do
  wakeonlan ${target}
  sleep 30
done

/sbin/shutdown -h now
