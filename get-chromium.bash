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
		echo 'Linux code will go here'
		;;
esac

