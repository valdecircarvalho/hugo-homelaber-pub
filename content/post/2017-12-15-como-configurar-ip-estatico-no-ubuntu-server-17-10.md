---
author: Valdecir Carvalho
date: 2017-12-15 11:00:14+00:00
draft: false
title: Como configurar IP estático no Ubuntu Server 17.10
type: post
url: /como-configurar-ip-estatico-no-ubuntu-server-17-10/
categories:
- Blog
- Homelab
- Tutoriais
tags:
- blog
- configuração
- configurar ip
- configurar rede ubuntu server
- ip estático
- ip fixo
- linux
- netplan
- ubuntu
- ubuntu 17.10
- ubuntu server
- ubuntu server network configuration
---

Olá Homelabers!

Vocês sabiam que o **Ubuntu Server** mudou a** forma de configurar IP estático** na **versão 17.10**?

Pois então, eu não sabia. Esses dias, fui subir uma VM com a nova versão do Ubuntu Server e fiquei quebrando a cabeça para configurar um IP estático, pois estava fazendo da maneira antiga - editar o arquivo /etc/network/interfaces

Depois de muito procurar, encontrei uma documentação, onde diz que agora o Ubuntu Server utiliza [YAML](https://pt.wikipedia.org/wiki/YAML) para configuração de rede via um utilitário chamado [NETPLAN](https://wiki.ubuntu.com/Netplan). Esta nova ferramenta substitui o arquivo de interfaces estáticas (**/etc/network/interfaces**). Agora você deve usar **/etc/netplan/*.yaml** para configurar as interfaces de rede do Ubuntu Server.



<blockquote>O Ubuntu 17.10 introduz um novo método de configuração padrão para dispositivos de rede, usando o utilitário netplan em vez do utilitário ifupdown. A configuração agora está escrita como arquivos YAML **/etc/netplan** em vez de **/etc/network/interfaces**.</blockquote>



Bom, vou deixar aqui uma receitinha de bolo para configurar um IP estático no Ubuntu Server 17.10.

O novo arquivo de configuração de interfaces agora está no diretório **/etc/netplan**. Um arquivo chamado **01-netcfg.yaml** é usado para configurar a primeira interface. Abaixo está a configuração padrão para uma interface usando DHCP.


    
    # This file describes the network interfaces available on your system
    # For more information, see netplan(5).
    network:
     version: 2
     renderer: networkd
     ethernets:
       ens160:
         dhcp4: yes
         dhcp6: yes



Para salvar suas alterações, execute o comando abaixo:

`sudo netplan apply`



## CONFIGURANDO ENDEREÇOS IP ESTÁTICOS:



Para configurar um endereço de IP estático usando a nova ferramenta NetPlan, o arquivo deve ser assim: endereço IPv4 (192.168.1.40), Gateway (192.168.1.1), Servidores DNS (192.168.1.2).

Conteúdo original do arquivo **/etc/netplan/01-netcfg.yaml**

![](/imagens/2017/12/configurar-ip-estatico-ubuntu-server-17_01.jpg)


Editar o arquivo **/etc/netplan/01-netcfg.yaml **com o comando `sudo nano **/etc/netplan/01-netcfg.yaml** `

![](/imagens/2017/12/configurar-ip-estatico-ubuntu-server-17_02.jpg)



    
    # This file describes the network interfaces available on your system
    # For more information, see netplan(5).
    network:
     version: 2
     renderer: networkd
     ethernets:
       ens160:
         dhcp4: no
         dhcp6: no
         addresses: [192.168.1.40/24]
         gateway4: 192.168.1.1
         nameservers:
           addresses: [192.168.1.2]
    



Salve o arquivo, e execute o comando:

`sudo netplan apply`

![](/imagens/2017/12/configurar-ip-estatico-ubuntu-server-17_03.jpg)


Veja que agora o comendo ifconfig mostra as novas configurações de IP para a interface ens160. Fácil não?

*** Atenção para o nome da sua placa de rede, no meu exemplo, a placa tem o nome de **ens160**. ***

Mais informações sobre como usar o utilitário NETPLAN [aqui](https://wiki.ubuntu.com/Netplan) e [aqui](https://wiki.ubuntu.com/MigratingToNetplan)

**UPDATE**: Depois que publiquei esse post, encontrei na internet um artigo no site [Sempre Update com mais detalhes para configurar o Ubuntu 17.10 com o Netplan ](https://sempreupdate.com.br/linux-basico-defina-um-ip-estatico-no-ubuntu-17-10-com-netplan/)

Bom, pessoal, é isso! Deixe nos comentários, se você já sabia dessa nova forma de configurar o IP estático no Ubuntu Server ou se foi uma novidade para você também!

Um abraço e até a próxima!

Valdecir
