+++
author =  "Valdecir Carvalho"
date = "2015-03-07 16:18:50+00:00"
draft = "false"
title = "Meu Homelab"
type = "page"
url = "/meu-homelab/"
+++



Olá HomeLabers!





Muitos me perguntam o que eu tenho de equipamento rodando no meu lab e aqui está a resposta.





# Homelab 2018



![](http://homelaber.com.br/site/wp-content/uploads/2018/01/equipamentos-homelab-homelaber-01.jpg)




## Um pouco de história.



Eu comecei com um lab de VMware vSphere rodando em um notebook e ao longo do tempo fui comprando, trocando e conseguindo uma tonelada de equipamentos, já tive quase que um datacenter em casa - servidor de rack, storage, etc - mas o consumo de energia era proibitivo para deixar ligado 24X7 e o calor e ruído eram excessivos e causava um incômodo desnecessário.

Fiz um downgrade e o equipamento que tenho hoje atendem plenamente aos meus requisitos:




      * Custo acessível
      * Baixo ruído
      * Baixo consumo de energia
      * Potência - poder de processamento.




## Equipamento:



Hoje o meu lab é composto de 3 Hosts vSphere, sendo um servidor "Enterprise" e dois "Desk Servers" e também um Switch Layer 3.

**HPE ML 110 G9** - falei sobre esse servidor [aqui](http://homelaber.com.br/novo-homelab-para-2017-hpe-ml-110-g9/)
Intel(R) Xeon(R) CPU E5-1603 v3 @ 2.80GHz
64GB RAM
2X HD 2.0 TB
2X SSD 256 GB

**Lenovo M92p**
Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz
32GB RAM
1X HD 2.5 TB
1X SSD 256 GB

**Lenovo M92p**
Intel(R) Core(TM) i7-3770 CPU @ 3.40GHz
28GB RAM
1X HD 1.5 TB
1X SSD 256 GB

**Switch Cisco SG500X-24 24-Port Gigabit**

Esse é um switch Cisco da linha Small Business, que atende perfeitamente o meu Lab para tudo o que eu quiser fazer. [Link para o datasheet](https://www.cisco.com/c/en/us/support/switches/sg500x-24-24-port-gigabit-4-port-10-gigabit-stackable-managed-switch/model.html)

![](http://homelaber.com.br/site/wp-content/uploads/2018/01/equipamentos-homelab-homelaber-02.jpg)




## Arquitetura do Lab



Não vou postar aqui uma arquitetura do lab, pois ela está sempre mudando, mas basicamente esses equipamentos estão atrás do modem da minha operadora e rodando em uma rede (VLAN) isolada do resto da rede da minha casa.



## Software



A base do meu lab é o VMware ESXi. Em cima dele consigo rodar praticamente qualquer workload que eu desejar, até mesmo outros hypervisors utilizando Nested Virtualization.

Tenho acesso a todo o portfólio de produtos VMware através do programa [VMware vExpert](http://homelaber.com.br/category/vexpert/) e também do [VMUG Advantange](http://homelaber.com.br/como-obter-licencas-full-dos-produtos-vmware/). Então #ficaadica

Felizmente, por causa do vExpert, acabo tendo acesso a licenças NFR (Not For Resale) de vários outros fabricantes, como Veeam, Vembu, Zerto, Nutanix, etc.

Os software que não tenho acesso NFR - no caso de produtos Microsoft - acabo utilizando uma assinatura MSDN que eu tenho - e está acabando - ou ainda em Trial Mode.

[![](http://homelaber.com.br/site/wp-content/uploads/2018/02/HOMELAB-POWERED-BY-VMUG-ADVANTAGE-644x540.png)
](https://www.vmug.com/VMUG-Join/VMUG-Advantage)



## Lab dos Sonhos



SE eu tivesse grana para investir em um lab dos sonhos, HOJE ele seria assim:




      * 3 Hosts [SuperMicro SYS-E300-8D](https://www.supermicro.com/products/system/Mini-ITX/SYS-E300-8D.cfm) com 128GB de RAM com 1X SSD 1TB + 1 SSD 512 GB em cada (All Flash baby!!)
      * 1 Intel [NUC SKULL (NUC6i7KYK)](https://www.intel.com/content/www/us/en/nuc/nuc-kit-nuc6i7kyk-brief.html) com 32Gb e SSD 512GB
      * 1 Switch 10GB [Netgear XS708T-100NES](https://www.netgear.com/business/products/switches/smart/XS708T.aspx) (8 portas 10GB)
      * 1 Switch Cisco L3 24 portas (um 2960 já estaria de bom tamanho ou um ainda menor)
      * 1 NAS [Synology DS1517](https://www.synology.com/en-us/products/DS1517+)+ com interface 10GB


Tudo isso dentro de um Rack pequenininho para caber embaixo da minha mesa :)

Deixe ai nos comentários, qual é o seu lab e qual é o seu lab dos sonhos!



## Fotos



[su_slider source="media: 4347,4346,4345,4344,4343" link="lightbox" width="960" height="600" title="no"]
