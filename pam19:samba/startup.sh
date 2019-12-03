#/bin/bash

# Configurem l'Information Provider
bash /opt/docker/install.sh && echo "Install OK"

# Iniciem tots els processos
/sbin/nslcd
/sbin/nscd -d
