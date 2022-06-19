FROM node:16

COPY ./package.json ./package.json

COPY ./package-lock.json ./package-lock.json
ENV NODE_ENV=production
RUN npm install --production

COPY . .

CMD ["node","server.js"]
