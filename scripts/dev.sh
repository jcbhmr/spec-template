#!/bin/bash -eu

rm -vrf dist
cp -vr static dist || mkdir -v dist
(
  trap 'kill 0' SIGINT SIGTERM ERR EXIT
  bikeshed watch src/index.bs dist/index.html &
  python -m http.server -d=dist &
  wait
)
