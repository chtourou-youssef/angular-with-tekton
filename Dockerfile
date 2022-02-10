FROM nginx:stable-alpine
EXPOSE 80
WORKDIR /usr/share/nginx/html
COPY dist/ .
