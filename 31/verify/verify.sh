#!/usr/bin/env bash

mkdir .tmp/
wget https://raw.githubusercontent.com/warsawjs/workshop-setup/master/31/verify/.solidarity.json -O .tmp/.solidarity.json
npx solidarity -f .tmp/.solidarity.json
rm -rf .tmp/
