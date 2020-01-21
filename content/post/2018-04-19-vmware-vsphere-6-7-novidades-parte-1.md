---
author: Valdecir Carvalho
date: 2018-04-19 11:00:14+00:00
draft: false
title: VMware vSphere 6.7 - Novidades - Parte 1
type: post
url: /vmware-vsphere-6-7-novidades-parte-1/
categories:
- Blog
- VMware
tags:
- Nova versão VMware
- vmware
- VMware 6.7
- vmware blog
- VMware vCenter 6.7
- vmware vsphere
- VMware vSphere 6.7
- VMware vSphere with Operations Manager 6.7 e VMware vSAN 6.7
---

Olá Homelabers!

Ontem a VMware anunciou o GA (General Availability) do VMware vSphere 6.7

Quase [um ano e meio após o release do VMware vSphere 6.5](http://homelaber.com.br/vmware-vsphere-6-5-lancamento-oficial/) e um dia após o seu aniversário de 20 anos essa nova versão está cheia de novidades e melhorias.

Nesse post, vou descrever brevemente as features que eu acredito que devam ser discutidas e mencionadas.




      * O vSphere Client (HTML5) tem cerca de 95% de recursos completos
      * Monitoramento aprimorado do vCenter appliance (VCSA)
      * Melhor gerenciamento de backup do vCenter
      * Atualizações do ESXi com Single Reboot
      * Inicialização rápida do ESXi
      * Suporte nativo para discos 4K


![](/imagens/2018/04/vmware-vsphere-67-principais-novidades-novas-features-new-features-644x319.jpg)




## vSphere Client HTML5



O vSphere 6.7 **marca a versão final do vSphere Web Client (Flash)**

![](/imagens/2018/04/vsphere-67-vsphere-client-features-parity-644x319.jpg)


Essa é uma feature na wishlist de muita gente. Desde a versão 6.5 quando a [VMware anunciou a morte do "Fat Client"](https://blogs.vmware.com/vsphere/2016/05/goodbye-vsphere-client-for-windows-c-hello-html5.html) e o desenvolvimento de um client 100% baseado em HTML5 muita coisa evoluiu.

Infelizmente o **Client HTML5 ainda não está 100% operacional**, mas segundo a VMware nesse **release teremos certa de 95% das funcionalidades implantadas** e a VMware promete que **novas funcionalidades serão incluídas nos próximos releases**.

De acordo com Duncan Epping (@duncanyb), que já tem usado essa interface por um longo período de tempo, a interface é mais rápida e intuitiva.



<blockquote>I think the majority of you will be very very happy with what you will see and with the overall experience. It just **feels fast(er)** and seems **more intuitive**. Duncan Epping ([link](http://www.yellow-bricks.com/2018/04/17/vsphere-6-7-announced/))</blockquote>



Há também um cliente a menos, a interface do Platform Services Controller (PSC) (/ psc) agora faz parte do vSphere Client. Agora, localizado no menu Administração, as opções do PSC são divididas entre duas guias. O gerenciamento de certificados tem sua própria guia e todos os outros gerenciamento estão na guia de configuração.

![](/imagens/2018/04/vSphere-Client-6.7-644x362.png)


Os destaques incluem:




      * vSphere Update Manager
      * Content Library
      * Suporte ao vSAN
      * Suporte ao vRealize Operations
      * Suporte ao NSX
      * Storage Policies
      * Host Profiles
      * Diagrama de topologia de vDS
      * Licenciamento




## Monitoramento aprimorado do vCenter appliance (VCSA):



Outra feature muito bacana e que melhorou muito em relação a versão 6.5

O vSphere Appliance Management Interface (VAMI) - vcenter:5480 - foi reconstruído e está usando a nova interface padrão da VMware chamada [Clarit UI](https://vmware.github.io/clarity/). Em relação ao VAMI da versão 6.5 agora existem várias novas tabs na interface relacionadas a saúde do VCSA.

Na tab de monitoração é possível ver o status de CPU, Memória, Discos, etc.

![](/imagens/2018/04/VCSA-6.7-VAMI-Disk-644x333.png)




## Melhor gerenciamento de backup do vCenter:



Na versão 6.5 já havia a possibilidade de fazer o backup do VCSA pela UI, mas não era possível fazer agendamentos. Na versão 6.7 você pode agendar backups, definir retenção, encriptar o backup e selecionar o que você quer fazer backup.

![](/imagens/2018/04/vsphere-67-vcsa-vcenter-agendar-backup.jpg)


![](/imagens/2018/04/vsphere-67-backup-644x319.jpg)




## Atualizações do ESXi com Single Reboot:



Na versão 6.7 do VMware vSphrere a VMware eliminou um processo de boot para grandes releases, em outras versões eram necessários 2 boots e agora somente 1. Isso faz uma diferença enorme quando se você levar em conta que um servidor enterprise leva em torno de 10-15 minutos para reiniciar e você precisa atualizar um DC inteiro, é uma grande economia de tempo.

![](/imagens/2018/04/vsphere-67-single-reboot-vsphere-quick-boot-644x319.jpg)




## Inicialização rápida do ESXi:



Essa é uma feature MUITO MUITO legal.

Basicamente, é uma maneira de reiniciar o hipervisor sem passar pelo processo de reinicialização do hardware físico. Isso significa que você está removendo a última reinicialização. Por enquanto somente alguns hardwares (servidores) serão compatíveis com essa feature.

https://www.youtube.com/watch?v=T3OZiuAJnmE&list=PLNolXBQS42ixDXWTX3oHph4mZbFptSSPv

**Lista de servidores compatíveis no momento:**

Dell PowerEdge R630
Dell PowerEdge R640
Dell PowerEdge R730
Dell PowerEdge R740
HPE Proliant DL360 Gen9
HPE Proliant DL360 Gen10
HPE Proliant DL380 Gen9
HPE Proliant DL380 Gen10
Nested - ESXi Nested (viva os homelabs)



## Suporte nativo para discos 4K:



A versão 6.7 do VMware vSphere agora suporta nativamente [discos 4K](https://www.bit-tech.net/reviews/tech/storage/the-facts-4k-advanced-format-hard-disks/1/), uma feature muito útil para aqueles que querem usar os dispositivos de grande capacidade.

![](/imagens/2018/04/4k-adv-format-sectors-644x225.png)




Vou parar por aqui, mas já estou preparando novos posts com mais novidades sobre o VMware vSphere 6.7

O lab já está sendo preparado para receber a nova versão, então aguardem novidades.

Fique de olho na página [VMware vSphere 6.7 Links e Informações](http://homelaber.com.br/vmware-vsphere-6-7-links-e-informacoes/) aqui no blog, lá você vai encontrar tudo sobre o VMware vSphere 6.7

Deixe nos comentários, sua opinião sobre essa nova versão. Pelo que você viu até agora, faltou alguma coisa que você esperava não foi implementado? Te pegou de surpresa?
