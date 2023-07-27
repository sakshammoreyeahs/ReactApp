FROM node:14


WORKDIR /app
COPY package*.json ./
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN chown node:node /usr/local/bin/docker-entrypoint.sh
#RUN npm ci --only=production
RUN npm install

COPY . .
EXPOSE 3000

CMD ["npm", "start"]
