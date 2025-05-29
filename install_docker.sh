#!/bin/bash

# Remover versões antigas
sudo apt remove -y docker docker-engine docker.io containerd runc

# Atualizar pacotes e instalar dependências
sudo apt update
sudo apt install -y     ca-certificates     curl     gnupg     lsb-release

# Adicionar chave GPG oficial do Docker
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Adicionar repositório oficial do Docker
echo   "deb [arch=$(dpkg --print-architecture)   signed-by=/etc/apt/keyrings/docker.gpg]   https://download.docker.com/linux/ubuntu   $(lsb_release -cs) stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Atualizar pacotes novamente
sudo apt update

# Instalar Docker Engine, CLI e containerd
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Testar instalação
sudo docker run hello-world

echo "Se quiser usar Docker sem sudo, execute:"
echo "sudo usermod -aG docker $USER"
echo "newgrp docker"
