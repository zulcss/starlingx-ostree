#!/bin/sh

set -e

# Create /etc/mtab symlink, replacing a regular file if necessary

if [ ! -L /etc/mtab ]
then
	rm -f /etc/mtab
	ln -s /proc/self/mounts /etc/mtab
fi
