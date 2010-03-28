#!/bin/bash

set -e

case `uname` in
	'Darwin' )
		curl -O `./latestChromiumURL.py`
	

		unzip -q chrome-mac.zip 

		cd chrome-mac
		rm -rf ~/Applications/Chromium.app
		mv Chromium.app/ ~/Applications/Chromium.app
		cd ..

		rm -rf chrome-mac
		;;
	'Linux' )
		wget `./latestChromiumURL.py`
		unzip -q chrome-linux.zip
		rm -rf chrome-linux.zip
		;;
esac

