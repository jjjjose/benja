# imagen inicial de Nodejs
# FROM node:12.18.2-alpine3.9
FROM node:14.16.1-alpine3.13
RUN mkdir -p /app
WORKDIR /app
EXPOSE 3000 