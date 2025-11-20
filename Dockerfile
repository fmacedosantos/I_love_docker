# A partir da imagem "node", versão 14
FROM node:14
# Define o diretório de trabalho padrão da imagem
WORKDIR /app_eu_amo_docker
# 1° ponto: diretório atual (onde está o Dockerfile) dentro do host 
# 2° ponto: diretório atual na imagem (definida em WORKDIR)
COPY . .
# Será executado enquanto a imagem estiver sendo criada
RUN npm install
# Será rodado ao iniciar o container a partir da imagem
ENTRYPOINT npm start 