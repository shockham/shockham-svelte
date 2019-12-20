FROM mhart/alpine-node:12

# install dependencies
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --production

FROM nginx:alpine
COPY ./public /usr/share/nginx/html/
