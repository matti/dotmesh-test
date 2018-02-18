#!/usr/bin/env bash
set -e

if [ -e "/data/start.txt" ]; then
  start=$(cat /data/start.txt)
else
  start=0
fi

while true; do
  let start=start+1
  echo $start > /data/start.txt
  echo $start
  sleep 1
done