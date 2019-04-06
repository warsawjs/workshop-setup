#!/usr/bin/env bash

mkdir .tmp/
curl -sSL https://raw.githubusercontent.com/warsawjs/workshop-setup/master/31/verify/.solidarity.json > .tmp/.solidarity.json
npx solidarity -f .tmp/.solidarity.json
rm -rf .tmp/
