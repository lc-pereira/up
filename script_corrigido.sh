#!/bin/bash
# NAO APAGUE A LINHA ACIMA!

cd $HOME

# Cria os diretórios joao e maria
mkdir -p joao maria

# Copia o conteúdo do /etc/systemd para joao
cp -r /etc/systemd joao/

# Copia os arquivos passwd e group para maria
cp /etc/passwd /etc/group maria/

# Faz uma cópia da pasta joao
cp -r joao joao_copia

# Faz uma cópia da pasta maria
cp -r maria maria_copia

# Cria mais uma pasta
mkdir -p mais_uma_pasta

# Copia joao e maria para dentro de mais_uma_pasta
cp -r joao maria mais_uma_pasta/

# Move maria para dentro de mais_uma_pasta/temp (criando temp primeiro)
mkdir -p mais_uma_pasta/temp
mv mais_uma_pasta/maria mais_uma_pasta/temp/

# Move joao para dentro de mais_uma_pasta/maria
mkdir -p mais_uma_pasta/maria
mv mais_uma_pasta/joao mais_uma_pasta/maria/
