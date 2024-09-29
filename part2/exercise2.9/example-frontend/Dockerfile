# EXERCISE 2.9
# Updated Dockerfile from exercise 1.14
# Change ENV REACT_APP_BACKEND_URL=http://localhost:8080 to ENV REACT_APP_BACKEND_URL=http://localhost/api/

FROM node:16

EXPOSE 5001  
ENV REACT_APP_BACKEND_URL=http://localhost/api/

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
RUN npm install -g serve

CMD ["serve", "-s", "-l", "5001", "build"]
