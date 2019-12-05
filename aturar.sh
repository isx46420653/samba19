#!/bin/bash
docker stop pam samba ldapserver &> /dev/null
docker rm pam samba ldapserver &> /dev/null
echo "Net!"
