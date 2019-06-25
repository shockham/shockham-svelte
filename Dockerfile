FROM mhart/alpine-node:12

# install dependencies
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --production

FROM mhart/alpine-node:12

WORKDIR /app
COPY --from=0 /app .
COPY ./public ./public

ENV HOST 0.0.0.0
EXPOSE 3000
ENTRYPOINT ["yarn"]
CMD ["run", "start"]
