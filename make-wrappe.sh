#!/bin/sh

set -eu

ARCH=$(uname -m)
SHARUN_LINK=${SHARUN_LINK:-https://github.com/VHSgunzo/sharun/releases/latest/download/sharun-$ARCH-aio}
wget -qO /tmp/sharun-aio "$SHARUN_LINK"
chmod +x /tmp/sharun-aio

###################################### wget ######################################
APPNAME=wget
VERSION=$(pacman -Q $APPNAME | awk '{print $2; exit}')
/tmp/sharun-aio lib4bin --with-wrappe --dst-dir ./dist /usr/bin/$APPNAME
mv -v ./dist/$APPNAME ./dist/$APPNAME-$VERSION-wrappe

###################################### curl ######################################
APPNAME=curl
VERSION=$(pacman -Q $APPNAME | awk '{print $2; exit}')
/tmp/sharun-aio lib4bin --with-wrappe --dst-dir ./dist /usr/bin/$APPNAME
mv -v ./dist/$APPNAME ./dist/$APPNAME-$VERSION-wrappe

#######################################################################################
###################################### coreutils ######################################
#######################################################################################

###################################### cp ######################################
APPNAME=cp
VERSION=$(pacman -Q coreutils | awk '{print $2; exit}')
/tmp/sharun-aio lib4bin --with-wrappe --dst-dir ./dist /usr/bin/$APPNAME
mv -v ./dist/$APPNAME ./dist/$APPNAME-coreutils-$VERSION-wrappe

###################################### mv ######################################
APPNAME=mv
VERSION=$(pacman -Q coreutils | awk '{print $2; exit}')
/tmp/sharun-aio lib4bin --with-wrappe --dst-dir ./dist /usr/bin/$APPNAME
mv -v ./dist/$APPNAME ./dist/$APPNAME-coreutils-$VERSION-wrappe

###################################### ln ######################################
APPNAME=ln
VERSION=$(pacman -Q coreutils | awk '{print $2; exit}')
/tmp/sharun-aio lib4bin --with-wrappe --dst-dir ./dist /usr/bin/$APPNAME
mv -v ./dist/$APPNAME ./dist/$APPNAME-coreutils-$VERSION-wrappe

###################################### rm ######################################
APPNAME=rm
VERSION=$(pacman -Q coreutils | awk '{print $2; exit}')
/tmp/sharun-aio lib4bin --with-wrappe --dst-dir ./dist /usr/bin/$APPNAME
mv -v ./dist/$APPNAME ./dist/$APPNAME-coreutils-$VERSION-wrappe

###################################### rmdir ######################################
APPNAME=rm
VERSION=$(pacman -Q coreutils | awk '{print $2; exit}')
/tmp/sharun-aio lib4bin --with-wrappe --dst-dir ./dist /usr/bin/$APPNAME
mv -v ./dist/$APPNAME ./dist/$APPNAME-coreutils-$VERSION-wrappe

###################################### mkdir ######################################
APPNAME=mkdir
VERSION=$(pacman -Q coreutils | awk '{print $2; exit}')
/tmp/sharun-aio lib4bin --with-wrappe --dst-dir ./dist /usr/bin/$APPNAME
mv -v ./dist/$APPNAME ./dist/$APPNAME-coreutils-$VERSION-wrappe

###################################### cat ######################################
APPNAME=cat
VERSION=$(pacman -Q coreutils | awk '{print $2; exit}')
/tmp/sharun-aio lib4bin --with-wrappe --dst-dir ./dist /usr/bin/$APPNAME
mv -v ./dist/$APPNAME ./dist/$APPNAME-coreutils-$VERSION-wrappe

###################################### chmod ######################################
APPNAME=chmod
VERSION=$(pacman -Q coreutils | awk '{print $2; exit}')
/tmp/sharun-aio lib4bin --with-wrappe --dst-dir ./dist /usr/bin/$APPNAME
mv -v ./dist/$APPNAME ./dist/$APPNAME-coreutils-$VERSION-wrappe

###################################### chown ######################################
APPNAME=chown
VERSION=$(pacman -Q coreutils | awk '{print $2; exit}')
/tmp/sharun-aio lib4bin --with-wrappe --dst-dir ./dist /usr/bin/$APPNAME
mv -v ./dist/$APPNAME ./dist/$APPNAME-coreutils-$VERSION-wrappe
