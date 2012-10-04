#!/bin/bash

# LDAP authentication
auth-client-config -t nss -p lac_ldap

# sudoers
echo 'Defaults mail_always' >> /etc/sudoers
echo '%lab-admins ALL= ALL' >> /etc/sudoers
