FROM nginx:1.19.8

# Install some convenience tools in the container
RUN apt-get update && \
    apt-get install dnsutils wget awscli -y

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
