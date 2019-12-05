#! /bin/bash
# @edt ASIX M06 2019 - 2020
# startup.sh
# -------------------------------------

# Instal·lem SAMBA
bash /opt/docker/install.sh && echo "Install OK"

# Configurem el Information Provider a LDAP
/sbin/nslcd && echo "nslcd OK"
/sbin/nscd && echo "nscd OK"

# Afegim els usuaris UNIX/SAMBA i LDAP/SAMBA
bash /opt/docker/users.sh && echo "Users OK"

/usr/sbin/nmbd && echo "nmb  OK"
/usr/sbin/smbd -F && echo "smb OK"
