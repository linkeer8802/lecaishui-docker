FROM nginx:latest

MAINTAINER info@lecaishui.com

COPY auth/ /auth/
COPY conf/ /conf/
COPY certs/ /certs/

CMD ["nginx", "-c", "/conf/nginx.conf"]