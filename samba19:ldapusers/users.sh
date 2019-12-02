#!/bin/bash

# Script que crea els usuaris LDAP a la base de dades SAMBA
usuaris=$(getent passwd)

for user in $usuaris
do
  uid=$(echo $user | cut -d: -f3)
  echo $uid
done
