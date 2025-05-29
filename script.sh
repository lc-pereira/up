#!/bin/bash
# NAO APAGUE A LINHA ACIMA!

cd ~

mkdir joao maria

cp -r /etc/systemd joao/

cp /etc/passwd /etc/group maria/

cp -r joao joao_copia

cp -r maria maria_copia

mkdir mais_uma_pasta

cp -r joao maria mais_uma_pasta/

mv mais_uma_pasta/maria mais_uma_pasta/temp
mv mais_uma_pasta/joao mais_uma_pasta/maria
mv mais_uma_pasta/temp mais_uma_pasta/joao
