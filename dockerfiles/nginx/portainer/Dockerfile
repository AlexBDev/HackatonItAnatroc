FROM nginx:1.13

ARG DNS_PORTAINER
ARG IP_PORTAINER

COPY ./conf/nginx.conf.template /etc/nginx/nginx.conf

RUN sed -i "s/%DNS_PORTAINER%/$DNS_PORTAINER/" /etc/nginx/nginx.conf
RUN sed -i "s/%IP_PORTAINER%/$IP_PORTAINER/" /etc/nginx/nginx.conf
