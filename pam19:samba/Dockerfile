# PAM from Scratch # PAM from Scratch
FROM fedora:27
LABEL version="1.0"
LABEL author="Pau Martín"
LABEL subject="PAM que autentica contra samba19:pam"
RUN dnf -y install passwd nss-pam-ldapd pam_mount samba-client cifs-utils authconfig
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
CMD /opt/docker/startup.sh
