FROM nginx:1.13

ARG DNS_FRONT
ARG DNS_API

RUN apt-get update && apt-get install -y zip openssl curl python

RUN mkdir /etc/nginx/ssl/ && cd /etc/nginx/ssl && \
    openssl req -x509 -sha256 -newkey rsa:2048 -keyout cert.key -out cert.pem -days 1024 -nodes -subj '/C=FR/ST=Rhone/L=Lyon/CN=anatroc/emailAddress=anatroc@anatroc-industries.com'

ADD https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip ngrok.zip
RUN unzip ngrok.zip && chmod +x ngrok && mv ngrok /usr/local/bin

COPY ./conf/proxy.conf.template /etc/nginx/nginx.conf

RUN sed -i "s/%DNS_FRONT%/$DNS_FRONT/" /etc/nginx/nginx.conf
RUN sed -i "s/%DNS_API%/$DNS_API/" /etc/nginx/nginx.conf
