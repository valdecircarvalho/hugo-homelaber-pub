---
author: Valdecir Carvalho
date: 2018-09-17 17:03:15+00:00
draft: false
title: Como rodar um simples servidor Apache com Docker
type: post
url: /como-rodar-um-simples-servidor-apache-com-docker/
categories:
- Blog
- Docker
tags:
- apache server docker
- blog
- comando docker servidor apache
- como criar servidor apache docker
- docker
- servidor apache
---

Olá Homelabers,

Você já precisou rodar um servidor web (Apache) para testar um código HTML rápidinho?

Pois então, sexta-feira passada, eu estava brincando de dev, criando um layout em HTML para um site da VMware e precisava testar localmente o código. Como o meu lab está desligado - falta de tempo, bandeira vermelha na conta de energia, etc - resolvi dar uma pesquisada rápida no google para subir um servidor Apache no Docker.

A operação é muito simples e vai te economizar um bocado de tempo. Veja como eu fiz:

Com o **docker já instalado** no Mac - esse procedimento vale para Windows e Linux também - execute o comando abaixo:

`docker run -dit --name web-xxxxx -p 8080:80 -v /Users/valdecircarvalho/Documents/DockerHD/vpro-map:/usr/local/apache2/htdocs/ httpd:2.4`

Explicando o comando:

**docker run** - executa o container
**-dit**
**Detached (-d)** - Roda o container em background
**Interactive (-i)** - Roda o container em modo interativo
**tty (-t)** - Roda o container com um pseudo TTY
**--name** web-xxxx
Cria um nome para o container
**-p** 8080:80
Redireciona a porta 80 do container para a porta 8080 do seu computador
**-v** /Users/valdecircarvalho/Documents/DockerHD/vpro-map:/usr/local/apache2/htdocs/
Redireciona o volume (diretório) **/Users/valdecircarvalho/Documents/DockerHD/vpro-map** do seu computador para o diretório **/usr/local/apache2/htdocs/** do container. Desse modo, basta você colocar o seu código nesse diretório e ele aparecerá automaticamente dentro do seu container  e vice versa, sem perder o seu código quando o container for desligado.
**httpd:2.4**
Nome da imagem que você vai usar. No caso, estou utilizando a versão 2.4 do apache (httpd).

Então, com um simples comando, você consegue subir um servidor web para testes.

E ai? Deixe nos comentários desse post, se isso foi útil para você!


