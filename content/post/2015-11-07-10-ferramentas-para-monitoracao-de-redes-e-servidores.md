---
author: Valdecir Carvalho
date: 2015-11-07 18:00:13+00:00
draft: false
title: 10 ferramentas para monitoração de redes e servidores
type: post
url: /10-ferramentas-para-monitoracao-de-redes-e-servidores/
categories:
- Blog
tags:
- ferramenta de monitoração
- homelab
- linux
- Monitoração
- monitoring tools
- nagios
- opensource
- OpManager
- zabbix
---

Olá Homelabers!

Nesse post vou apresentar a vocês 10 ferramentas - Open Source e Comerciais - para monitoração de redes e servidores.

![noc](/imagens/2015/11/noc.jpg)


Algumas dessas ferramentas eu utilizo no dia-a-dia lá na FIRMA e também as tenho instaladas em meu Homelab. Essas ferramentas são amplamente utilizadas em empresas de todos os tamanhos e você pode aproveitar o que vai conhecer aqui para implantar uma delas em sua empresa, facilitar a sua vida e impressionar o seu chefe :)

<!-- more -->

A principio todas as ferramentas de monitoração de compartilham de features (caracteristicas) básicas como:
- Monitoramento de CPU, Disco, Memória, Temperatura, etc
- Monitoramento de Interfaces - Volume de tráfego, utilização, etc.
- Avisos e alarmes baseados em Thresholds
- Notificação por e-mail
- Dashboards para apresentação dos dados
- Histórico de eventos

E por tras dos panos, todos eles utilizam as mesmas técnicas e protocolos para capturar informações sobre os sistemas : SNMP, WMI, SSH, Monitores de Performance do Windows.

A minha experiência do dia-a-dia é com a ferramenta da ManageEngine - OpManager que já roda no meu ambiente há mais de 2 anos. J[a cheguei a trabalhar também com o Nagios e com o Zabbix, mas o OpManager, na minha opinião é imbatível.

Nagios
[https://www.nagios.com/products/nagios-core/](https://www.nagios.com/products/nagios-core/)

Zabbix
[http://www.zabbix.com/](http://www.zabbix.com/)

Moniti
[https://mmonit.com/monit/](https://mmonit.com/monit/)

SolarWinds
[http://www.solarwinds.com/network-performance-monitor.aspx](http://www.solarwinds.com/network-performance-monitor.aspx)

OpManager
[https://www.manageengine.com/network-monitoring/](https://www.manageengine.com/network-monitoring/)

OpenNMP
[http://www.opennms.org/](http://www.opennms.org/)

Pandora FMS
[http://pandorafms.com/](http://pandorafms.com/)

Zenoss
[http://www.zenoss.org/](http://www.zenoss.org/)

PRTG
[http://www.paessler.com/prtg](http://www.paessler.com/prtg)

Icinga
[https://www.icinga.org/download/](https://www.icinga.org/download/)

Observium
[http://www.observium.org/](http://www.observium.org/)

SpiceWorks
[http://www.spiceworks.com/](http://www.spiceworks.com/)

BONUS:
Cacti
[http://www.cacti.net/index.php](http://www.cacti.net/index.php)

Ntop
[http://www.ntop.org/](http://www.ntop.org/)

Aqui no meu HomeLab eu tenho instalado o Cacti, o NTOP e o OpManager, mas pretendo fazer instalações de outros sistemas para ganhar conhecimento, ter uma opinião e postar aqui para vocês. Aguardem os próximos posts.

Até o próximo post e não se esqueça de deixar o seu comentário no post, seguir o HomeLaber no [Twitter](https://twitter.com/homelaber) (@Homelaber) e curtir a nossa página no [Facebook](https://www.facebook.com/homelaber) (fb.com/homelaber) para ficar sempre atualizado das novidades do blog.
