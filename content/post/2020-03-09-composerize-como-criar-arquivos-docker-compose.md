+++
author = "Valdecir Carvalho"
title = "Composerize - uma maneira fácil de criar arquivos docker-compose"
date = "2020-03-09 07:00:00"
publishDate = "2020-03-09 07:00:00"
type = "post"
draft = "false"
url = "/composerize-como-criar-arquivos-docker-compose"
link = "yes"
image = "/imagens/2020/MM/imagem.jpg"
description = ""
tags = [
    "blog",
    "dicas",
    "docker",
	"docker-compose",
    "containers"
]
categories = ["Blog", "Dicas"]
+++

![image title](/imagens/2020/03/composerize.jpg)

Conheça o {{< target-blank title="composerize" url="https://composerize.com/" >}}, uma maneira fácil de criar automaticamente arquivos docker-compose.yaml  partir de do comando docker run. 

Se você, assim como eu, nunca lembra a sintaxe correta do arquivo docker-compose.yaml essa é a ferramenta perfeita!

Exemplo de docker run: 

```
docker run \
  --name=mariadb \
  -e MYSQL_ROOT_PASSWORD=ROOT_ACCESS_PASSWORD \
  -e MYSQL_DATABASE=USER_DB_NAME  \
  -e MYSQL_PASSWORD=DATABASE_PASSWORD  \
  -p 3306:3306 \
  -v path_to_data:/config \
  --restart unless-stopped \
  mariadb
```
No composerize a saída será: 
```
version: '3.3'
services:
    mariadb:
        container_name: mariadb
        environment:
            - MYSQL_ROOT_PASSWORD=ROOT_ACCESS_PASSWORD
            - MYSQL_DATABASE=USER_DB_NAME
            - MYSQL_PASSWORD=DATABASE_PASSWORD
        ports:
            - '3306:3306'
        volumes:
            - 'path_to_data:/config'
        restart: unless-stopped
        image: mariadb
```
