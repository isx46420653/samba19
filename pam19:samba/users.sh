#!/bin/bash

# Usuaris UNIX locals
for user in local1 local2 local3
do
  useradd $user
  echo "$user" | passwd --stdin $user
done
