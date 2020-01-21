---
author: Valdecir Carvalho
date: 2016-06-06 05:31:57+00:00
draft: false
title: Alpine Linux - Uma nova distro linux ligth que vale a pena conhecer
type: post
url: /alpine-linux-uma-nova-distro-linux-ligth-que-vale-a-pena-conhecer/
categories:
- Blog
tags:
- '#vDM30in30'
- '#vDM30in30BR'
- alpine
- alpine linux
- distribuição linux
- home lab
- homelab
- homelab vmware
- homelaber
- how-to
- howto
- laboratório vmware
- lightweight linux distro
- linux
- linux distro
- pi
- rasp-pi
- raspberry pi
- tutoria
- tutorial alpine linux
- vblogs
- vexpert
- video
- video instalação alpine linux
- video tutorial alpine linux
- youtube
---

Olá Homelabers!

Essa semana por meio de uma galera do grupo [Infraestrutura TI](https://telegram.me/infraestruturati) no Telegram conheci uma nova distro Linux super levinha chamada Alpine Linux ([http://www.alpinelinux.org/](http://www.alpinelinux.org/)).



![Alpine Linux - www.alpinelinux.org](/imagens/2016/06/Alpine_Linux.png)




<blockquote>Segundo o site, o Alpine Linux é uma distro independente, não comercial e de uso geral, criada para power users que buscam segurança, simplicidade e eficiência de recursos.  Foi criado tendo por base [musl libc](https://en.wikipedia.org/wiki/Musl) e [busybox](https://en.wikipedia.org/wiki/BusyBox), o que permitiu criar uma distro extremamente enxuta.</blockquote>



<!-- more -->

O [download do Alpine Linux](http://www.alpinelinux.org/downloads/) tem apenas 87MB em sua versão Standard. E em meus testes, consegui rodar em uma VM com 128MB de memória.

Estou testando o Alpine Linux e gostando muito. A curva de aprendizagem para quem está acostumado com outras distros como Ubuntu, CentOS, RedHat é bastante curta e a documentação existente no site é bem completa.

Vale comentar que ainda existem versões para Raspberry Pi e outros dispositivos ARM. Essa distro promete!

E ao que parece, o Alpine Linux vem chamando a atenção nos últimos tempos, de acordo com o [Google Trends](https://www.google.com/trends/explore#q=%22alpine%20linux%22).

![alpine-linux-google-trends](/imagens/2016/06/alpine-linux-google-trends.jpg)


Eu já fiz um [post aqui sobre Distros Ligths](http://homelaber.com.br/3-distros-linux-pequenas-e-leves-para-o-seu-home-lab/) e o Alpine Linux certamente merece um lugar de destaque nessa categoria.

Acabei fazendo um video com a instalação e as primeiras configurações do Alpine, assim facilita para o pessoal.

[embed]https://youtu.be/qiGnjQ4mRns[/embed]



### Instalação



A instalação do Alpine Linux é feita em 3 simples passos:




      1. Fazer o download do ISO em [http://www.alpinelinux.org/downloads/](http://www.alpinelinux.org/downloads/) Para simplificar, use a versão Standard.
      2. Crie um pendrive de boot usando o [Rufus](http://homelaber.com.br/criando-ubs-boot-vmware-exsi-com-rufus/) (instruções no link)
      3. De o boot pelo pendrive, logue com o usuário "root" sem senha e pronto! Está feito!


![tutorial-alpine-linux-homelaber-009](/imagens/2016/06/tutorial-alpine-linux-homelaber-009.png)


![tutorial-alpine-linux-homelaber-008](/imagens/2016/06/tutorial-alpine-linux-homelaber-008.png)


Após a instalação, você deve executar o comando:


    
    setup-alpine



Esse comando irá nos guiar através de um wizard bem simples (em modo texto)

![tutorial-alpine-linux-homelaber-007](/imagens/2016/06/tutorial-alpine-linux-homelaber-007.png)


![tutorial-alpine-linux-homelaber-006](/imagens/2016/06/tutorial-alpine-linux-homelaber-006.png)


![tutorial-alpine-linux-homelaber-005](/imagens/2016/06/tutorial-alpine-linux-homelaber-005.png)


![tutorial-alpine-linux-homelaber-004](/imagens/2016/06/tutorial-alpine-linux-homelaber-004.png)


![tutorial-alpine-linux-homelaber-003](/imagens/2016/06/tutorial-alpine-linux-homelaber-003.png)






### Pós-Instalação



**Trabalhando com pacotes no Alpine Linux (instalar, remover, atualizar, procurar, etc)**

O gerenciador de pacotes utilizado pelo Alpine Linux é o apk

Abaixo está uma tabela com os comandos no Alpine Linux e seus correspondentes no Ubuntu/Debian e RHEL/CentOS

<table style="width: 1019px; border-color: #000000;" >
<tbody >
<tr >

<td style="width: 260px; text-align: center;" >Ação
</td>

<td style="width: 247px; text-align: center;" >Alpine Linux (apk)
</td>

<td style="width: 247px; text-align: center;" >Ubuntu/Debian (apt)
</td>

<td style="width: 239px; text-align: center;" >RHEL/CentOS (yum)
</td>
</tr>
<tr >

<td style="width: 260px; text-align: center;" >Instalar pacote
</td>

<td style="width: 247px; text-align: center;" >

    
    apk add [nome-do-pacote]



</td>

<td style="width: 247px; text-align: center;" >

    
    apt-get install [nome-do-pacote]



</td>

<td style="width: 239px; text-align: center;" >

    
    yum install [nome-do-pacote]



</td>
</tr>
<tr >

<td style="width: 260px; text-align: center;" >Remover pacote
</td>

<td style="width: 247px; text-align: center;" >

    
     apk del [nome-do-pacote]



</td>

<td style="width: 247px; text-align: center;" >

    
    apt-get remove [nome-do-pacote]



</td>

<td style="width: 239px; text-align: center;" >

    
    yum remove [nome-do-pacote]



</td>
</tr>
<tr >

<td style="width: 260px; text-align: center;" >Atualizar todos os pacotes instalados
</td>

<td style="width: 247px; text-align: center;" >

    
    apk upgrade -U -a



</td>

<td style="width: 247px; text-align: center;" >

    
    apt-get update && apt-get upgrade



</td>

<td style="width: 239px; text-align: center;" >

    
    yum update && yum upgrade



</td>
</tr>
<tr >

<td style="width: 260px; text-align: center;" >Procurar pacotes
</td>

<td style="width: 247px; text-align: center;" >

    
    apk search [string]



</td>

<td style="width: 247px; text-align: center;" >

    
    apt-get search [string]



</td>

<td style="width: 239px; text-align: center;" >

    
    yum search [string]



</td>
</tr>
</tbody>
</table>

**Como configurar hostname**

As configurações do hostname estão localizadas no arquivo _/etc/hostname_

Para configurar o hostname de seu servidor, execute o comando :


    
    setup-hostname
    
    /etc/init.d/hostname --quiet restart



**Como configurar interface de rede**

As configurações de rede estão localizadas no arquivo _/etc/network/interfaces_

Para configurar a(s) interface(s) de rede de seu servidor, execute o comando:


    
    setup-interfaces
    
    /etc/init.d/networking --quiet start



**Como configurar DNS**

As configurações de DNS estão localizadas no arquivo _/etc/resolv.conf_

Para configurar o DNS em seu servidor, execute o comando:


    
    setup-dns



**Como configurar Timezone**

Para configurar o Timezone de seu servidor, execute o comando:


    
    setup-timezone



**Como configurar o Proxy**

Para configurar o Proxy de seu servidor, execute o comando:


    
    setup-proxy



Os dados do proxy deve ser inseridos utilizando o formado: _http://<url-ou-ip-do-proxy>:<porta-do-proxy>_, para excluir o proxy, execute o comando novamente e escolha_ [none]_.

**Como acessar o console via SSH com o usuário root**

Se você tentar acessar o console do servidor via SSH com o usuário root, não vai conseguir, pois o sshd vem por default configurado para bloquear acessos do usuário root, por motivos de segurança.

Para contornar esse problema, você deve ou criar um novo usuário ou alterar o parâmetro "**PermitRootLogin**" para **yes** dentro do arquivo _/etc/ssh/sshd_config_ e em seguida reiniciar o servidor sshd utilizand o comando _service sshd restart_

Como instalar acf (Alpine Configuration Framework)

O Alpine ACF é uma "aplicação" web para gerenciamento e monitoração do Alpine. E a seus instalação é feita com o comando:


    
    setup-acf



Após a instalação, basta acessar o ip ou url do seu servidor (com https).

_https://<ip-do-servidor>_

![tutorial-alpine-linux-homelaber-002](/imagens/2016/06/tutorial-alpine-linux-homelaber-002.png)


![tutorial-alpine-linux-homelaber-001](/imagens/2016/06/tutorial-alpine-linux-homelaber-001.png)


![tutorial-alpine-linux-homelaber-000](/imagens/2016/06/tutorial-alpine-linux-homelaber-000.png)


**Onde está o comando man?**

O comando man não é instalado por padrão. Primeiramente, execute o comando abaixo para instalar o pacote do man:


    
    apk add man



O próximo passo é instalar o pacote de documentação do pacote ou comando desejado, executando o comando:


    
    apk add <package-doc>



ex: apk add nano-doc

Mas atenção, nem todos os pacotes tem disponível o pacote do manual. Para uma lista de todos os pacotes "-doc" execute o comando:


    
    apk search | grep doc | more



(se você tiver uma sugestão melhor, deixe um comentário no post!)

**Repositório de Pacotes**

O repositório de pacotes está localizado no arquivo _/etc/apk/repositories_

Instalando Java 8 no Alpine Linux

Para instalar o Java 8 no Alpine Linux, execute os comandos abaixo:


    
    apk add openjdk8-jre-base --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted \ && rm -rf /var/cache/apk/*



Se você precisar instalar o Java da Oracle, [aqui](http://blog.takipi.com/lean-mean-java-virtual-machine-making-your-docker-7x-lighter-with-alpine-linux/) e [aqui](https://developer.atlassian.com/blog/2015/08/minimal-java-docker-containers/) são bons lugares para encontrar ajuda.



### Links:



Não deixe de visitar esses links sobre o Alpine Linux:

Alpine Linux no [Wikipedia](https://en.wikipedia.org/wiki/Alpine_Linux)

Twitter - [@alpinelinux](https://twitter.com/alpinelinux)

[Forum Alpine Linux](http://forum.alpinelinux.org/forum)

[Wiki (leitura obrigatória)](https://wiki.alpinelinux.org/wiki/Main_Page)

[Review no Distrowatch](http://distrowatch.com/weekly.php?issue=20150706#alpine) (em Inglês)

É isso ai pessoal! Mais um post e video publicado!

Deixe os seus comentários e até a próxima!

VC
