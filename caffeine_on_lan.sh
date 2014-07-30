#!/bin/sh

target=name #Replace with machine's name

sleep 600 # Don't do anything unless power is stable

while ! ping -c 1 ${target}
do
  wakeonlan ${target}
  sleep 30
done

shutdown -h now
