#!/usr/bin/env bash

# CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check if brew is install and install it 
check_brew() {
  which -s brew
  if [[ $? != 0 ]]; then
    # Install Homebrew
    echo 'brew not found, installing...'
    echo
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo 'brew found, updating...'
    echo
    brew update
  fi
}

# Install ansible
install_ansible() {
    echo 'Making sure asnible is installed'
    echo
    brew install ansible
}

check_brew
install_ansible
