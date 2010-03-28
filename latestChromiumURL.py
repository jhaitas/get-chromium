#!/usr/bin/env python

import urllib
import platform

system = platform.system()
arch = platform.machine()


OS = { 
	'Linux' : 'linux',
	'Darwin' : 'mac'
} [system]
if OS=='linux' and arch=='x86_64':
	extraArch = '-64'
else:
	extraArch = ''

chromiumRelease = OS+extraArch
archiveName = 'chrome-'+OS+'.zip'

baseURL = 'http://build.chromium.org/buildbot/snapshots/'
releaseURL = baseURL+'chromium-rel-'+chromiumRelease+'/'
latestURL = releaseURL+'LATEST'
latestREV = urllib.urlopen(latestURL).read()
latestChromium = releaseURL+latestREV+'/'+archiveName

print latestChromium

