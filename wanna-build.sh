#!/bin/bash

set -e
build_dirs=(core)
TOP=`pwd`
pkgbuild_opts=" -cf $TOP/mk.conf -if "
for d in ${build_dirs[@]}
do
	echo $d
for pkg in $d/*
do
	cd $pkg
	if [ -f .inspect ]; then

		pkgbuild_opts+= " -kw"
		echo "$pkg:build data  will be kept for inspection"
	else
		echo "**"
	fi
	if [ -f .newbuild ]
	then
		pkgbuild_opts+=" -if"
		echo "$pkg: Footprint will change"
	else
		echo "**"
	fi
	echo "$pkg: building package"

	pkgmk -d $pkgbuild_opts
#	pkgmk -uf
	cd $TOP
done
done
