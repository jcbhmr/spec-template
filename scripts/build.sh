#!/bin/bash -eu

rm -vrf dist
cp -vr static dist || mkdir -v dist
bikeshed spec src/index.bs dist/index.html
