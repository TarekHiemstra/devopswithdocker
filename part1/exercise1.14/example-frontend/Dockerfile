# MANDATORY EXERCISE 1.14: ENVIRONMENT

FROM node:16

EXPOSE 5001  
ENV REACT_APP_BACKEND_URL=http://localhost:8080

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
RUN npm install -g serve

CMD ["serve", "-s", "-l", "5001", "build"]
