---
author: Valdecir Carvalho
date: 2018-04-10 11:40:11+00:00
draft: false
title: Como executar VMware PowerCLI via Docker
type: post
url: /como-executar-vmware-powercli-via-docker/
categories:
- Blog
- Tools
- VMware
tags:
- blog
- container
- docker
- docker image
- ferramenta
- PowerCli
- powercli docker image
- script vmware
- script vsphere
- vmware
- vmware powercli
---

Olá Homelabers!

Nesse post vou mostrar a vocês como é executar o VMware PowerCLI via Docker.

O pessoal do [PowerCLI](https://communities.vmware.com/community/vmtn/automationtools/powercli) criou uma [**imagem Docker**](https://hub.docker.com/r/vmware/powerclicore/) com todos os componentes necessários para que você possa rapidamente utilizar o PowerCLI em qualquer computador/sistema operacional sem ter que se preocupar em ficar instalando PowerShell, dependências, etc.

Essa imagem já está atualizada para a [versão 10 do PowerCLI que eu falei sobre o lançamento nesse post](http://homelaber.com.br/vmware-powercli-10-0-0-disponivel-para-download/).

Se você já tem o Docker instalado em seu sistema operacional, basta executar o comando:


    
    docker run -it vmware/powerclicore



![](/imagens/2018/04/vmware-powercli-10-docker-image-644x518.gif)


Sim, somente isso! A imagem tem 680MB e já vem configurada com a última versão do [PowerShell](https://hub.docker.com/r/microsoft/powershell/), [PowerCLI](https://communities.vmware.com/community/vmtn/automationtools/powercli), [PowerNSX](https://powernsx.github.io/), [PowerVRA](https://github.com/jakkulabs/PowervRA) e [PowerCLI Example Scripts](https://github.com/vmware/PowerCLI-Example-Scripts) (scripts criados pela comunidade).

Eu estou rodando meus scripts PowerCLI sempre do Docker. E você?

Deixe nos comentários se você já tem utilizado Docker para alguma tarefa específica relacionada ao seu dia a dia com vSphere.






