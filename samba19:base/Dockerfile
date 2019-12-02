# Version: 0.0.1
# Pau Martín Samba
# -------------------------------------
FROM fedora:27
LABEL author="Pau Martín ASIX M06-ASO"
LABEL description="SAMBA server 2019-2020"
RUN dnf -y install vim procps samba samba-client
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]
