#!/bin/bash

# Necessitem crear el HOME de l'usuari LDAP
authconfig --enableshadow --enablelocauthorize \
--enableldap \
--enableldapauth \
--enablemkhomedir \
--ldapserver='ldapserver' \
--ldapbase='dc=edt,dc=org' \
--updateall
