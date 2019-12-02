#! /bin/bash
# @edt ASIX M06 2019 - 2020
# startup.sh
# -------------------------------------

# Afegim els usuaris UNIX i SAMBA
useradd lila
useradd roc
useradd patipla
useradd pla
echo -e "lila\nlila" | smbpasswd -a lila
echo -e "roc\nroc" | smbpasswd -a roc
echo -e "patipla\npatipla" | smbpasswd -a patipla
echo -e "pla\npla" | smbpasswd -a pla


# Iniciem els processos tot
/opt/docker/install.sh && echo "Install Ok"
/usr/sbin/nmbd && echo "nmb  Ok"
/usr/sbin/smbd -F && echo "smb Ok"
