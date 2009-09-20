#!/usr/bin/env python

import urllib

baseURL = 'http://build.chromium.org/buildbot/snapshots/chromium-rel-mac/'
latestURL = baseURL+'LATEST'
latestREV = urllib.urlopen(latestURL).read()
latestChromium = baseURL+latestREV+'/chrome-mac.zip'

print latestChromium

