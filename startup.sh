#!/bin/bash

USER=${USER:-ubuntu}
PASSWORD=${PASSWORD:-ubuntu}
LANG=${LANG:-en_US.UTF-8}
TIMEZONE=${TIMEZONE:-Etc/UTC}

echo ${TIMEZONE} > /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata
dpkg-reconfigure locales
update-locale LANG=${LANG}

if [ ! -d /home/${USER} ] ; then
  useradd -m -k /etc/skel -s /bin/bash  ${USER}
  echo "${USER}:${PASSWORD}" |chpasswd
  usermod -a --group sudo ${USER}
fi
/usr/sbin/sshd -D
