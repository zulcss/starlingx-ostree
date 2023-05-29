#!/bin/bash

virt-install \
	--name ostree-testing \
	--memory 2048 \
	--vcpus 1 \
	--disk ./ostree-disk.img,bus=sata \
	--import \
	--os-variant debiantesting \
	--network default \
	--check all=off \
	--nographics \
	-uefi
