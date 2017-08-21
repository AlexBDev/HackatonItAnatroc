# HackatonItAnatroc

## Install

Init submodule repositories

```bash
$ git submodule update --init --recursive`
```

To update repositories

```bash
$ git pull --recurse-submodules
```

Add this line to /etc/hosts
```
172.45.0.0 api.anroc front.anatroc
```

Run `docker-compose up -d`

Setup each app checkout the internal README and go to http://api.anatroc or http://front.anatroc
