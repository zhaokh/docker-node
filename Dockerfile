FROM node

LABEL maintainer="w"

RUN mkdir /app

COPY app.js /app/app.js

COPY package.json /app/package.json

WORKDIR /app

RUN npm install

EXPOSE 3000

CMD ["node","app.js"]