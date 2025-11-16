FROM nginx:stable-alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/nginx.conf

COPY static_content/ /usr/share/nginx/html/

EXPOSE 80

ENTRYPOINT ["nginx"]

CMD ["-g", "daemon off;"]
