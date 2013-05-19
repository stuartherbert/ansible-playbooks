#!/bin/bash

#export ANSIBLE_LIBRARY=`dirname $0`/modules
if [[ -z $1 ]] ; then
	ansible-playbook -i ./dev -K site.yml 
else
	ansible-playbook -i ./dev -K site.yml "$*"
fi