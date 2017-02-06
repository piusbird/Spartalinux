#!/bin/bash

set -e

TOP=`pwd`

for pkg in core/*
do
	cd $pkg
	pkgmk -c
	cd $TOP
done
