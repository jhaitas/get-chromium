#!/bin/bash

set -e

# Identify which command we need to download
if which wget &> /dev/null; then
	DLOAD_CMD="wget"
elif which curl &> /dev/null; then
	DLOAD_CMD="curl -O"
else
	echo "don't know how to download"
fi

case `uname` in
	'Darwin' )
		${DLOAD_CMD} `./latestChromiumURL.py`
	

		unzip -q chrome-mac.zip 

		cd chrome-mac
		rm -rf ~/Applications/Chromium.app
		mv Chromium.app/ ~/Applications/Chromium.app
		cd ..

		rm -rf chrome-mac
		;;
	'Linux' )
		${DLOAD_CMD} `./latestChromiumURL.py`
		unzip -q chrome-linux.zip
		rm -rf chrome-linux.zip
		;;
esac

