#! /bin/bash
# @edt ASIX M06 2018-2019
# instal.lacio
# -------------------------------------
# Creem el directori del SHARE public
mkdir /var/lib/samba/public
chmod 777 /var/lib/samba/public
cp /opt/docker/* /var/lib/samba/public/.

# Creem el directori del SHARE privat
mkdir /var/lib/samba/privat
#chmod 777 /var/lib/samba/privat
cp /opt/docker/*.md /var/lib/samba/privat/.

# Afegim la configuració
cp /opt/docker/smb.conf /etc/samba/smb.conf

# Information Provider a LDAP
cp /opt/docker/nscd.conf /etc/nscd.conf
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf

# Permetem la autenticació amb ldap amb authconfig
bash /opt/docker/auth.sh
