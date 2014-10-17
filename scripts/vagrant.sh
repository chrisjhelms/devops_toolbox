#!/usr/bin/env bash

# Vagrant stamp
echo '

                                            __
 ___  _______     ________________    _____/  |_
 \  \/ /\__  \   / ___\_  __ \__  \  /    \   __\
  \   /  / __ \_/ /_/  >  | \// __ \|   |  \  |
   \_/  (____  /\___  /|__|  (____  /___|  /__|
             \//_____/            \/     \/

Fedora20 x86_64 Build

' > /etc/motd


# Setup SSH keys for the user vagrant
mkdir -pm 700 /home/vagrant/.ssh
wget --no-check-certificate 'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
