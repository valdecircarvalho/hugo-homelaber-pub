---
author: Valdecir Carvalho
date: 2015-11-08 18:00:07+00:00
draft: false
title: Instalação e configuração SNMP Linux Ubuntu
type: post
url: /instalacao-configuracao-snmp-linux-ubuntu/
categories:
- Blog
tags:
- como configurar
- how-to
- linux
- linux ubuntu server
- serviço snmp
- SNMP
- ubuntu
- ubuntu server
---

Olá Homelabers!!!

Nesse post, vou mostrar como se configura o serviço SNMP no Linux Ubuntu Server.

![logo-5.2](/imagens/2015/11/logo-5.2.jpg)


Antes de mais nada, vou responder a quem vive me perguntando (e criticando): Porque você só posta "coisas" do Ubuntu?

Vamos lá:




      1. 


<blockquote>Porque eu _gosto muito mais do Ubuntu_ do que de outras distros como CentOS, RedHat, etc.</blockquote>



      2. 


<blockquote>Porque eu tenho _muito mais facilidade_ em utilizar o Ubuntu do que outras distros</blockquote>



      3. 


<blockquote>_Eu sei que outras distros como o CentOS, RedHat, etc são mais utilizadas no ambiente corporativo_, mas nem tanto assim.</blockquote>



      4. 


<blockquote>Eu _sei fazer tudo o que eu quero (ou quase tudo no CentOS ou RedHat) mas eu **GOSTO** do Ubuntu_</blockquote>





Pronto, mas se vocês meus caros amigos e leitores quiserem que eu poste aqui como fazer "as coisas" tanto no Ubunto como no CentOS, perfeito, eu farei - **deixe o seu comentário no blog :)** ) Caso contrário... vou continuar no meu querido Ubuntu.

Agora chega de [chorumelas](https://www.youtube.com/watch?v=X7u7h3-Yufk) e vamos ao post.

<!-- more -->

![chorumelas](/imagens/2015/11/chorumelas.jpg)




O SNMP é um protocolo da pilha TCP (porta UDP 161) que é responsável pelo gerenciamento de dispositivos de rede. SNMP significa [Single Network Manage Protocol ](https://pt.wikipedia.org/wiki/Simple_Network_Management_Protocol)ou Protocolo Simples de Gerenciamento de Rede em português.

Ele é amplamente utilizado por ferramentas de monitoração como o Cacti, Nagios, Zabbix, OpManager e  outros - [listados no post anterior](http://homelaber.com.br/10-ferramentas-para-monitoracao-de-redes-e-servidores/).

Não vou me alongar aqui nesse post a falar sobre como o [SNMP funciona](http://pt.slideshare.net/maximillianx/network-monitoring-basics?related=1), etc (mas prometo falar em outro post), mas sim em como realizar a sua instalação e configuração no ambiente Linux Ubuntu.

Então vamos lá:

Acesse o seu servidor Linux Ubuntu já instalado ([ver outro posto sobre a instalação do Ubuntu](http://homelaber.com.br/como-instalar-e-configurar-o-linux-ubuntu-server/)) como root (
)

Digite o comando para instalar o SNMP:


    
    apt-get install snmp snmpd lm-sensors snmp-mibs-downloader snmptrapd



![snmp](/imagens/2015/11/snmp.png)


Após a instalação, o próximo passo é fazer uma cópia do arquivo de configuração do SNMP utilizando o comando abaico:


    
    mv /etc/snmp/snmpd.conf /etc/snmp/snmpd.conf.ori



Após isso, vamos editar o arquivo snmpd.conf e colocar as configurações necessárias.


    
    nano /etc/snmp/snmpd.conf



Aqui você deve copiar e colar as informções abaixo.


    
    view all included .1
    rocommunity homelab #nome da community
    sysLocation homelab #local do equipamento
    sysContact admin@homelab.srv.br #email de contato do equipamento
    
    



Salve o arquivo (no nano CTRL+X e Y para salvar) e reinicie o serviço SNMP.


    
    service snmpd restart



Pronto! O serviço SNMP está instalado e configurado. Agora vamos fazer o teste. Execute o comando abaixo:


    
    snmpwalk -v2c localhost -c homelab .1



![snmpwalk-exemplo](/imagens/2015/11/snmpwalk-exemplo.png)


O resultado deverá ser parecido com a tela acima.

Prontinho... o SNMP está instalado, configurado e testado no seu sistema.

Agora que você já sabe configurar o serviço SNMP em seus hosts Linux Ubuntu, você já pode correr atrás e instalar um sistema de monitoração com os citados no post anterior.

Mas se você ainda não se sente confortável em arriscar a instalação de uma das ferramentas postadas no útimo post, aguarde que eu vou fazer um post para cada ferramenta (ou as mais famosas ok?).

É isso meus amigos, fico aqui com mais um "tutorial" e não se esqueçam de  deixar o seu comentário no post, seguir o HomeLaber no [Twitter](https://twitter.com/homelaber) (@Homelaber) e curtir a nossa página no [Facebook](https://www.facebook.com/homelaber) (fb.com/homelaber) para ficar sempre atualizado das novidades do blog.

[caption id="attachment_905" align="aligncenter" width="600"]![O-Exterminador-do-Futuro-joinha](/imagens/2015/11/O-Exterminador-do-Futuro-joinha.jpg)
Deixe o seu joinha!!![/caption]
