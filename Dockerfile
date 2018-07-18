FROM nginx:1.15.1-alpine

ADD . /usr/src/app

WORKDIR /usr/src/app

RUN apk add bash && \
    mv nginx/* /etc/nginx && \
    touch /var/run/nginx.pid

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
