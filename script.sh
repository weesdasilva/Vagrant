# Gerando acesso via par de chaves.
  KEYPATH='/vagrant/keys'
  mkdir -p /root/.ssh
  cp $KEYPATH/key /root/.ssh/id_rsa
  cp $KEYPATH/key /root/.ssh/id_rsa.pub
  cp $KEYPATH/key.pub /root/.ssh/authorized_keys
  chmod 400 /root/.ssh/id*
  cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys

# Instalando o docker.
  if [ $(hostname) == "centos" ] ; then yum install wget -y ; else echo""; fi
  wget get.docker.io -O /tmp/docker.sh ; bash /tmp/docker.sh

  exec bash

  #Docker Compose
  sudo wget https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -O /usr/local/bin/docker-compose &>/dev/null
  sudo chmod +x /usr/local/bin/docker-compose

