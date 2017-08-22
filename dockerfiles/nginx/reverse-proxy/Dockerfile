FROM nginx:1.13

COPY ./conf/proxy.conf /etc/nginx/nginx.conf

ADD https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip ngrok.zip

RUN apt-get update && apt-get install -y zip openssl

RUN unzip ngrok.zip && chmod +x ngrok && mv ngrok /usr/local/bin

RUN mkdir /etc/nginx/ssl/ && cd /etc/nginx/ssl && \
    openssl req -x509 -sha256 -newkey rsa:2048 -keyout cert.key -out cert.pem -days 1024 -nodes -subj '/C=FR/ST=Rhone/L=Lyon/CN=anatroc/emailAddress=anatroc@anatroc-industries.com'