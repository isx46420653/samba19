#!/bin/bash

# Usuaris UNIX locals
for user in local1 local2 local3
do
  useradd $user
  echo "$user" | passwd --stdin $user
done

# Usuaris UNIX/SAMBA
for user in lila pla roc patipla
do
  useradd $user
  echo -e "$user\n$user" | smbpasswd -a $user
done

# Usuaris LDAP/SAMBA
for user in pau pere anna marta jordi admin
do
  # Creem l'usuari SAMBA a la BD local
  echo -e "$user\n$user" | smbpasswd -a $user
  gid=$(getent passwd $user | cut -d: -f4)
  home=$(getent passwd $user | cut -d: -f6)
  # Creem el HOME, canviem permisos i afegim XIXA
  mkdir -p $home
  cp -ra /etc/skel/ $home
  chown -R $user.$gid $home
done
