---
author: Valdecir Carvalho
date: 2018-03-26 18:00:01+00:00
draft: false
title: Série Upgrade VMware ESXi - Parte 1 - Cenários de atualização
type: post
url: /serie-upgrade-vmware-esxi-parte-1-cenarios-de-atualizacao/
categories:
- Blog
- Homelab
- Tutoriais
- VMware
tags:
- blog
- como fazer upgrade vmware
- tutorial esxi
- tutorial vmware
- update
- upgrade
- upgrade esxi
- vmware
- vmware vsphere
- vSphere
---

Olá Homelabers,

Qual versão do VMware ESXi vocês estão rodando em seus ambientes de produção ou lab?

Eu já fiz um post há algum tempo sobre o [upgrade do vCenter da versão 6.0 para 6.5](http://homelaber.com.br/como-atualizar-vmware-vcenter-6-0-para-6-5/) e você pode conferir esse post aqui. O upgrade foi bastante tranquilo e desta vez eu quero trazer a vocês uma série mostrando os cenários de upgrade do ESXi.

Lembrando que o [ESXi 5.5 está em sua fase final de suporte](http://homelaber.com.br/politica-de-cliclo-de-vida-dos-produtos-vmware-vmware-lifecycle-matrix/) - vai até Setembro/18 - então está mais do que na hora de começar a pensar e se preparar para fazer o upgrade o quanto antes.

Nesta série vou abordar **3 cenários para a atualização do ESXi**, acredito que esses são os cenários mais comuns para a nossa realidade, com destaque para o upgrade do vSphere 5.5 para vSphere 6.0.

Importante dizer que essa **série vai cobrir apenas as formas de upgrade do ESXi** e não vai cobrir o vCenter Server ok?

https://youtu.be/cveSppGBcsY



## Cenários de Atualização:





### **Cenário 1: Atualizando do vSphere 5.5 para vSphere 6.0**





### Cenário 2: Atualizando do vSphere 5.5 para vSphere 6.5





### Cenário 3: Atualizando do  vSphere 6.0 para vSphere 6.5





## Dicas e Melhores Práticas para um upgrade sem Stress






      * Consulte a HCL (Hardware Compatibility List para se certificar que o seu hardware suporta a atualização
      * Leia o Release Note e a Documentação da versão escolhida
      * Consulte o VMware vSphere Upgrade Guide
      * Se for utilizar um ISO, lembre-se de baixar e testar antes de iniciar a janela. Pode parecer obvio mas…
      * Documente o seu ambiente atual, será mais fácil caso haja a necessidade de um rollback
      * Tenha em mãos a senha de root do ESXi
      * Atualize primeiro o vCenter
      * Você pode ter um ambiente com Hosts ESXi com versões diferentes




## VMware vSphere 6.5 Upgrade eBook



Aproveito para deixar uma dica para vocês, o Emad Younis (@emad_younis) do time de engenharia do vSphere da VMware publicou um e-book com dicas, técnicas e recomendação para quem vai fazer upgrade para o vSphere 6.5

O e-book ficou super bacana e tem várias dicas legais e úteis que vou acabar usando nesse série de posts. Visite o[ site do Emad](http://emadyounis.com/upgrade/new-resource-vmware-vsphere-6-5-upgrade-ebook/) para baixar o e-book.

http://emadyounis.com/upgrade/new-resource-vmware-vsphere-6-5-upgrade-ebook/

Os vídeos da série já estão prontos, mas vou disponibilizá-los em doses para facilitar a vida de vocês :)

Deixe ai nos comentários a sua opinião. Devo cobrir outros cenários? Esses cenários atendem às suas necessidades?
