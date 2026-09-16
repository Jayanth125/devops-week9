FROM node:lts-alpine

WORKDIR /usr/src/app

COPY package.json ./
COPY index.js ./

# Update npm and bundled packages
RUN npm install -g npm@latest

# Create non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

USER appuser

EXPOSE 3000

CMD ["node", "index.js"]
