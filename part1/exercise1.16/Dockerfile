# EXERCISE 1.16: CLOUD DEPLOYMENT

FROM node:16-alpine AS build
SHELL ["/bin/sh", "-c"]

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=build /usr/src/app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
