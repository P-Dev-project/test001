FROM node:latest as build-step
RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod
# Stage 2
FROM nginx:alpine
COPY --from=build-step app/dist/angular8-springboot-client usr/share/nginx/html
