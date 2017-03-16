#!/usr/bin/env bash

while getopts c:d:n o; do
	case $o in
		c) echo "$OPTARG" ;;
		d) echo "$OPTARG" ;;
	esac
done