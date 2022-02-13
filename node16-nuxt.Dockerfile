FROM node:16.14.0-alpine3.14 

WORKDIR /app

RUN apk update && apk upgrade
RUN apk add git

COPY . .
RUN npm install
RUN npm run build

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

CMD ["npm", "start"]