#!/bin/sh

set -eu

ARCH=$(uname -m)
APPNAME=wget
VERSION=$(pacman -Q wget | awk '{print $2; exit}')
export ARCH VERSION
export OUTPATH=./dist

# Deploy dependencies
/tmp/sharun-aio --with-wrappe /usr/bin/wget --dst-dir ./dist

mv -v ./dist/$APPNAME ./dist/$APPNAME-$VERSION-wrappe
