FROM nginx:latest
RUN apt-get update && apt-get install -y iputils-ping curl
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
