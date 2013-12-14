#!/bin/bash
#
# usage:
# 	install.sh <site-file> <inventory-file>

if [[ -z $2 ]] ; then
	echo "usage: install.sh <site-file> <inventory-file>"
	exit 1
fi

site=$1
inventory=$2
shift 2

export ANSIBLE_EXECUTABLE=/bin/bash
#export ANSIBLE_LIBRARY=`dirname $0`/modules
ansible-playbook -vvv -i "$inventory" -K "$site" "$@"