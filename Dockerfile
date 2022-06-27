FROM node:latest

RUN apt-get update && apt-get install -y git
RUN mkdir -p /home/node/log-reader && chown -R node:node /home/node/log-reader
WORKDIR /home/node/log-reader

RUN git clone https://github.com/sigiltenebrae/log-reader-api.git
WORKDIR /home/node/log-reader/log-reader-api/log-reader
RUN npm install

EXPOSE 8081/tcp

CMD ng serve --host 0.0.0.0
