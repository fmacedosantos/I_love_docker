# A partir da imagem "node", versão 14
FROM node:14
# Define o diretório de trabalho padrão da imagem
WORKDIR /app_eu_amo_docker
# ARG define uma variável utilizável durante a construção da imagem
ARG PORT_BUILD=3000
# ENV define variáveis de ambiente em um container
ENV PORT=$PORT_BUILD
# Explicitando a porta que a aplicação está rodando no container
EXPOSE $PORT_BUILD
# 1° ponto: diretório atual (onde está o Dockerfile) dentro do host 
# 2° ponto: diretório atual na imagem (definida em WORKDIR)
COPY . .
# Será executado enquanto a imagem estiver sendo criada
RUN npm install
# Será rodado ao iniciar o container a partir da imagem
ENTRYPOINT npm start 