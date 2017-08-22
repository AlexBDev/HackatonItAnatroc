# HackatonItAnatroc

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

Run `docker-compose up -d`

Setup each app checkout the internal README and go to http://api.anatroc or http://front.anatroc
