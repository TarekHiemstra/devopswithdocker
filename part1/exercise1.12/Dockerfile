# MANDATORY EXERCISE 1.12: HELLO, FRONTEND! 

FROM node:16

Expose 5001
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
RUN npm install -g serve

CMD ["serve", "-s", "-l", "5001", "build"]
