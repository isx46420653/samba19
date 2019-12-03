#!/bin/bash

# Usuaris UNIX/SAMBA
for user in lila pla roc patipla
do
  useradd $user
  echo -e "$user\n$user" | smbpasswd -a $user
done

# Usuaris LDAP/SAMBA
for user in pau pere anna marta jordi admin
do
  # Creem l'usuari SAMBA local
  echo -e "$user\n$user" | smbpasswd -a $user
  home=$(getent passwd $user | cut -d: -f6)
  gid=$(getent passwd $user | cut -d: -f4)
  # Creem el HOME, canviem permisos i afegim XIXA
  mkdir -p $home
  echo "Usuari:$user amb home: $home" > $home/file.txt
  chown -R $user.$gid $home
done
