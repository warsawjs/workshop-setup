#!/usr/bin/env bash

mkdir .tmp/
wget https://raw.githubusercontent.com/warsawjs/workshop-setup/master/31/verify/.solidarity -O .tmp/
npx solidarity
rm -rf .tmp/
