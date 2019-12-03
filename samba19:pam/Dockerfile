# Version: 0.0.1
# Pau Martín Samba
# -------------------------------------
FROM fedora:27
LABEL author="Pau Martín ASIX M06-ASO"
LABEL description="SAMBA server que autentica contra ldapserver i conté els usuaris"
RUN dnf -y install vim procps samba samba-client nss-pam-ldapd authconfig openldap-clients
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]
