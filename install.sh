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

# are we debugging?
verbose=
if [[ -n $DEBUG ]] ; then
	verbose="-vvv"
fi

#export ANSIBLE_LIBRARY=`dirname $0`/modules
ansible-playbook $verbose -i "$inventory" -K "$site" "$@"