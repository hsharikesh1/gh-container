FROM node:24-alpine-latest

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME testDB
ENV MONGODB_CLUSTER_ADDRESS cluster0.8nfwqzm.mongodb.net
ENV MONGODB_USERNAME hsharikesh@gmail.com
ENV MONGODB_PASSWORD 1H2a3r4i@1

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]