# Gerando acesso via par de chaves.
  KEYPATH='/vagrant/keys'
  mkdir -p /root/.ssh
  cp $KEYPATH/key /root/.ssh/id_rsa
  cp $KEYPATH/key /root/.ssh/id_rsa.pub
  cp $KEYPATH/key.pub /root/.ssh/authorized_keys
  chmod 400 /root/.ssh/id*
  cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys

# Instalando o docker.
  curl -fsSL get.docker.com | bash 

  #Docker Compose
  curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
  chmod +x /usr/local/bin/docker-compose

