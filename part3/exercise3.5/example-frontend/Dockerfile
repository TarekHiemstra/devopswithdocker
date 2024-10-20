# MANDATORY EXERCISE 3.5

FROM node:16

Expose 5001
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
RUN npm install -g serve

RUN useradd -m appuser
RUN chown -R appuser:appuser .
USER appuser

CMD ["serve", "-s", "-l", "5001", "build"]
