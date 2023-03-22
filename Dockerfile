FROM node:16-alpine

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app/

RUN npm i

RUN npm run build

COPY ./.output /app/.output

EXPOSE 9000

ENTRYPOINT ["npm", "run", "start"]
