#!/bin/bash

echo "Download playbook to /tmp/zsh.yml"
curl URL > /tmp/zsh.yml

echo "Install role"
ansible-galaxy install sandzhaj.zsh_p10k

echo "Activate sudo session"
sudo echo ...successfull

echo "Provision playbook for $(whoami)"
ansible-playbook -i "localhost," -c local -b /tmp/zsh.yml --become-user "$(whoami)"