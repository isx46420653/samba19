#/bin/bash

# Creem alguns usuaris locals.
bash /opt/docker/users.sh

# Configurem l'Information Provider cap a LDAP per a veure els usuaris
bash /opt/docker/auth.sh

# Configurem el mòdul de PAM per a muntar els Home
cp /opt/docker/pam_mount.conf.xml /etc/security/pam_mount.conf.xml

# Copiem el system-auth amb el pam_mount afegit a les regles
cp /opt/docker/system-auth /etc/pam.d/system-auth
