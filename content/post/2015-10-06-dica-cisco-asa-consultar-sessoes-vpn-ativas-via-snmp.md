---
author: Valdecir Carvalho
date: 2015-10-06 00:06:54+00:00
draft: false
title: 'Dica: Cisco ASA - Consultar sessões VPN ativas via SNMP'
type: post
url: /dica-cisco-asa-consultar-sessoes-vpn-ativas-via-snmp/
categories:
- Blog
post_format:
- Nota
tags:
- blog vmware
- Cisco ASA
- Dicas
- homelab
- how-to
- ManageEngine
- MIB
- Monitoração
- NA FIRMA
- OID
- OpManager
- SNMP
- VPN
---

Olá Homelabers,

Vou começar a postar mais coisas sobre o meu dia-a-dia na FIRMA. É uma forma de guardar a informação para consultas futuras e ainda ajudar quem está passando pelo mesmo problema agora ou em um futuro distante.



<blockquote>_Qual é a OID do Cisco ASA para consultar o número de sessões (usuários) ativos via SNMP?_</blockquote>



Hoje precisei fazer um monitor no [OpManager](https://www.manageengine.com/network-monitoring/) (a ferramenta de monitoração que utilizamos na firma) que mostrasse o número de sessões VPN ativas no Cisco ASA (Firewall). A idéia é monitorar de uma forma fácil e gráfica quantos usuários estão utilizando a VPN, determinar horários de pico para otimizar a banda de internet, etc.

No ASA para apresentar essa informação utilizamos o comando:


    
    sh vpn-sessiondb summary



![cisco-asa-sh-vpn-sessiondb-summary](/imagens/2015/10/cisco-asa-sh-vpn-sessiondb-summary.png)


Depois de muito quebrar a cabeça, descobri que a OID SNMP que retorna essa informação é a "**.1.3.6.1.4.1.9.9.392.1.3.1**" ou "crasNumSessions" e que a MIB onde está localizada essa informação é a CISCO-REMOTE-ACCESS-MONITOR-MIB (que pode ser baixada [aqui no site da Cisco](http://tools.cisco.com/Support/SNMP/do/BrowseMIB.do?local=en&step=2&submitClicked=true&mibName=CISCO-REMOTE-ACCESS-MONITOR-MIB#dependencies)). Vale lembrar que essa OID funciona tanto no OPManager quanto em outras ferramentas de monitoração como o Cacit, Zabbix, etc.

Por fim, foi só importar as MIBs no OpManager, criar um novo monitor e voilá: Um gráfico bonitinho com o número de usuários VPN ativos.

![vpn-sessions-opmanager](/imagens/2015/10/vpn-sessions-opmanager.png)


É isso ai pessoal! Se essa informação foi útil para você, deixe um comentário no post!

Edit: Vou deixar o[ link do meu One Drive com todas as MIBs do Cisco ASA para Download](http://1drv.ms/1j1AVlX). Assim, caso eu ou você precisar novamente, não precisaremos ficar "caçando" pela internet.


