#!/bin/bash

echo "Download playbook to /tmp/zsh.yml"
curl https://raw.githubusercontent.com/sandzhaj/zsh_p10k/main/playbook.yml > /tmp/zsh.yml

echo "Install role"
ansible-galaxy install -f sandzhaj.zsh_p10k

echo "Provision playbook for $(whoami)"
ansible-playbook -i "localhost," -c local -b /tmp/zsh.yml --become-user "$(whoami)" --ask-become-pass