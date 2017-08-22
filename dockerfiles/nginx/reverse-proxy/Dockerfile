FROM nginx:1.13

COPY ./conf/proxy.conf /etc/nginx/nginx.conf

ADD https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip ngrok.zip

RUN apt-get update && apt-get install -y zip

RUN unzip ngrok.zip && chmod +x ngrok && mv ngrok /usr/local/bin