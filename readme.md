# Poloniex Autotrading Bot
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)

[![Docker Pulls](https://badgen.net/docker/pulls/bral1488/poloniex_trader_bot?icon=docker&label=pulls)](https://hub.docker.com/repository/docker/bral1488/poloniex_trader_bot/)
[![Docker Stars](https://badgen.net/docker/stars/bral1488/poloniex_trader_bot?icon=docker&label=stars)](https://hub.docker.com/repository/docker/bral1488/poloniex_trader_bot/)
[![Docker Image Size](https://badgen.net/docker/size/bral1488/poloniex_trader_bot?icon=docker&label=image%20size)](https://hub.docker.com/repository/docker/bral1488/poloniex_trader_bot/)


***I AM NOT RESPONSIBLE FOR ANY MONETARY LOSSES USING THIS BOT, THIS IS A CODING SIDE PROJECT AND NOTHING MORE, BY USING THIS BOT, YOU ARE ACCEPTING RESPONSIBILITY FOR ANY LOSSES YOU MAY INCUR.***


Inspired by: https://github.com/BenHiramTaylor/PoloniexTradingBot

Getting Started
-------------
Manual
------
1. rename ```*.yml``` files

```
mv example.config.yaml config.yaml
```

2. Fill the ```config.yaml``` with relevant data


3. install requirements

```
pip3 install -r requirements.txt
```

**WARNING** Tested on python 3.9


4. start bot
```
python3 main.py
```

Docker
--------------

1. rename *.yml files

```
mv example.config.yaml config.yaml
mv example.docker-compose.yml docker-compose.yml
```

2. Fill the ```config.yaml``` with relevant data

3. start bot
```
docker-compose up -d
```


How it works ?
-----------------

Coming soon




[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/bralbral)
