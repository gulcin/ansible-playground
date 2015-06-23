#!/bin/bash

# Syntax: ansible <hostGroup> [options]
# Options: 
#   -i hosts.yml        --> inventory file which stores hostname(s).
#   -m ram              --> module name. raw module executes ssh commands.
#   -a w                --> module arguments. this argument executes the w command.
#   -u gulcin.yildirim  --> ssh username.
#   -k                  --> ask for ssh password 

ansible all -i hosts.yml -m raw -a w -u gulcin.yildirim -k

