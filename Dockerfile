FROM node:18-alpine

ENV TZ=Asia/Shanghai

WORKDIR /app

COPY package.json ./

RUN npm cache clean --force && \
    npm install --omit=dev --silent

EXPOSE 7776

USER node

CMD ["node", "main.js"]
