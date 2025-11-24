FROM node:18-alpine

ENV TZ=Asia/Shanghai

WORKDIR /app

COPY package.json ./

RUN npm cache clean --force && \
    npm install --omit=dev --silent

COPY . .

EXPOSE 10000

CMD ["node", "main.js"]
