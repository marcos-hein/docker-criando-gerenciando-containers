FROM node:14
# busca no docker daemon uma imagem do node apartir da versão 14
FROM node:14
# define o diretório de trabalho sendo o /app-node, ñ sendo necessário repetir.
WORKDIR /app-node
# define um argumento para o tempo de build da imagem
ARG PORT_BUILD=6000
# define argunmento PORT para o tempo de execução utilizando o ARG PORT_BUILD
ENV PORT=$PORT_BUILD
# define que o container estará exposto na porta definida no argumento $PORT_BUILD do container
EXPOSE $PORT_BUILD
# o primeiro ponto se refere ao diretório atual
# já o segundo ponto ao diretório de trabalho /app-node
COPY . .
# instala as dependências do projeto
RUN npm install
# comando executado quando a imagem está pronta
ENTRYPOINT npm start