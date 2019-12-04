#/bin/bash

# Configurem l'Information Provider cap a LDAP per a veure els usuaris
cp /opt/docker/nscd.conf /etc/nscd.conf
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf
cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml

# Permetem la autenticació amb ldap amb authconfig
cp /opt/docker/system-auth-ac /etc/pam.d/system-auth-ac
