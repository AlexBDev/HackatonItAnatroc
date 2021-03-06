# HackatonItAnatroc

## Pre required

docker 17.06.1-ce
docker-compose 1.15.0

## Install

Init submodule repositories

```bash
$ git submodule update --init --recursive
```

To update repositories

```bash
$ git submodule update --recursive --remote
```

Add this line to /etc/hosts
```
172.45.0.10 api.anatroc front.anatroc
```

Run `user-permissions.sh` this will create app.env file.

Complete app.env with

```
export DNS_API=api.anatroc.ovh
export DNS_FRONT=anatroc.ovh
export DNS_PORTAINER=portainer.anatroc.ovh
export API_URL=https://api.anatroc.ovh
```

Setup the HackatonItAnatroc/app/app/config/parameters.yml file

Then `source app.env && docker-compose up -d`


Setup each app checkout the internal README and go to http://api.anatroc or http://front.anatroc


# Authentication

- For development you need to use ngrok from nginx_reverse_proxy in this case google have a valid domain to redirect
- Enter to the container `docker-compose exec nginx_reverse_proxy bash`
- Launch ngrok `ngrok http 80`
- Paste the https url to slack, we need to provide this url in google console api

# Problems

How to deals with problems 

- Check the status of container with `docker-compose ps`
- Identify the container who's exited then check logs with `docker-compose logs my_conainer`
- Fix problems (composer, gulpfile, confg ...) then `docker-compose up -d --build --force-recreate`
- All containers are up but you got a 502 error try `docker-compose restart`
- The stack work but problems in app checkout the parameters.yml and set the keys (google, etc)
