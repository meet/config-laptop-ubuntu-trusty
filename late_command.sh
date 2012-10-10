#!/bin/bash

# Remove NetworkManager
dpkg --purge network-manager network-manager-gnome

# Configuration files
REPO=config-fatlab-ubuntu-precise
( cd / \
  && git clone --no-checkout https://github.com/meet/$REPO.git \
  && mv $REPO/.git / \
  && git checkout --force \
  && rm -rf $REPO \
  && git config status.showUntrackedFiles no )

# LDAP authentication
auth-client-config -t nss -p lac_ldap

# sudo
chmod 440 /etc/sudoers.d/*

# Epoptes
epoptes-client -c
