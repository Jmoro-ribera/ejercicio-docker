FROM nginx:1.25.4-alpine

COPY ./lb.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]

