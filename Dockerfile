FROM node:18-alpine
WORKDIR /usr/src/app
COPY package.json ./
COPY index.js ./
CMD ["node", "index.js"]
