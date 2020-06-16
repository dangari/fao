FROM node:12
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build-s
EXPOSE 3000
CMD ["npm", "run", "start", "--verbose", "--debug"]
