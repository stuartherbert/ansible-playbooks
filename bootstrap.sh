#!/bin/bash

export ANSIBLE_LIBRARY=`dirname $0`/modules
ansible-playbook -i ./dev -K site.yml "$*"