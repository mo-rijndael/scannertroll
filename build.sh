#!/bin/bash

REDIRECT=https://youtu.be/dQw4w9WgXcQ

for loc in `cat locations.list`; do
	echo "location ${loc} { return 302 $REDIRECT; }" >> scannertroll.conf
done
