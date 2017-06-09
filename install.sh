#!/bin/bash

main() {
  echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu xenial main" | sudo tee "/etc/apt/sources.list.d/ansible.list" > /dev/null

  sudo apt-get update
  sudo apt-get install \
    software-properties-common \
    ansible \
    git

  mkdir -p ~/Code/coop
  git clone git@github.com:coop/playbooks.git ~/Code/coop/playbooks
}

main "$@"
