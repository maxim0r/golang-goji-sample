FROM nginx

ARG EXPOSEPORT
ARG APPHOST
ARG APPPORT

RUN { \
    echo 'server {'; \
    echo "  listen $EXPOSEPORT;"; \
    echo '  access_log /var/log/nginx/access.log;'; \
    echo '  location / {'; \
    echo "  proxy_pass http://$APPHOST:$APPPORT/;"; \
    echo '  proxy_redirect off;'; \
    echo '  proxy_set_header Host $host;'; \
    echo '  proxy_set_header X-Real-IP $remote_addr;'; \
    echo '  proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;'; \
    echo '  }'; \
    echo '}'; \
} > /etc/nginx/conf.d/default.conf

EXPOSE $EXPOSEPORT