---
author: Valdecir Carvalho
date: 2016-03-23 05:48:17+00:00
draft: false
title: VMware ESXi FREE - Diferenças e Limitações
type: post
url: /vmware-esxi-free-diferencas-e-limitacoes/
categories:
- Homelab
tags:
- esxi free
- esxi free install
- home lab
- home lab vmware free
- homelab
- instalação vmware
- instalação vmware esxi free
- vmware
- vmware esxi free
- vmware free
- vmware grátis
---

Olá Homelabers!

Hoje vou falar sobre as principais diferenças e limitações entre a versão FREE do VMware ESXi e a versão paga.

![oh-yeah-its-free](/imagens/2016/03/oh-yeah-its-free.png)


Muitas pessoas ao ter o primeiro contato o mundo da virtualização descobrem que existe uma **versão FREE do VMware ESXi** e logo surge uma dúvida:



<blockquote>

> 
> ### _"Quais são as diferenças entre a versão FREE e a versão paga?"_
> 
> 
</blockquote>



<!-- more -->

De uma forma bem resumida, as principais limitações são:




      * Não existe suporte para a versão FREE
      * A versão FREE do VMware ESXi não pode ser adicionada a um servidor vCenter
      * Limite de 2 CPUs físicas por host
      * Máximo de 8 vCPUs (virtual CPUs) por VM
      * Número ilimitado de Cores por CPU
      * Número ilimitado de Memória por host.


A versão FREE do VMware ESXi é o mesmo download da versão FULL que fica "desbloqueada" por 60 dias. Se você não inserir o Serial Number da versão free, o produto funciona com a versão FULL por 60 dias.

Após o período de trial (60 dias) o produto perde as funcionalidades da versão FULL, bloqueando as funcionalidades adicionais e se torna a versão FREE. Mesmo assim, entrar com o Serial Number que é disponibilizado quando você opta pela versão FREE no site da VMware.

Os principais cenários de uso da versão FREE do VMware ESXi são:


      * Primeiros contatos com a ferramenta
      * Laboratório simples
      * Testes de validação
      * Pequenas empresas que querem "testar" virtualização sem um grande investimento.




### Usar a versão FREE para estudos e Labs, minha opinião:



_**Não vale a pena investir TEMPO e subir um lab na versão FREE do ESXi.**_ Você acaba perdendo muitas funcionalidades e essas funcionalidades são as mais legais do produto: vMotion, Fault Tolerance, High Availability, Cluster, Shared Storage, só para citar algumas.

Para um LAB VMware ser bacana, você deve ter no mínimo o vCenter instalado e 2-3 hosts ESXi, mesmo que rodando nested. Sem isso, você não conseguirá simular o "mundo real" de qualquer empresa.

Minha recomendação é sempre baixar a versão TRIAL que da suporte FULL a todas as funcionalidades por 60 dias. Após esse período, você pode - e deve - desmontar o seu LAB e configurar novamente. Pode parecer "um saco" a primeira vista, mas depois que você aprende e "pega as manhas" todo o processo não leva mais do que algumas horas. E com o tempo, você vai desenvolvendo scripts, criando templates, etc. Essa repetição vale a pena.



### Como obter a versão FREE do VMware ESXi (6.x).






      * Acessar o site [VMware vSphere Hypervisor (ESXi) 6.0 Download Page](https://my.vmware.com/web/vmware/evalcenter?p=free-esxi6)


![](/imagens/2016/03/como-obter-versão-free-vmware-esxi-000.png)





      * Fazer o login no site ou criar a sua conta. Se você não tiver uma conta no my.vmware.com, basta criar clicando em “Create an Account” e seguir o passo-a-passo no site
      * Fazer o registro para a versão do ESXi FREE


![como-obter-versão-free-vmware-esxi-001](/imagens/2016/03/como-obter-versão-free-vmware-esxi-001.png)





      * Você irá receber uma chave única e ter acesso ao download do software
      * Após isso, é só fazer o download do software


![como-obter-versão-free-vmware-esxi-002](/imagens/2016/03/como-obter-versão-free-vmware-esxi-002.png)




### Como registrar a versão FREE do VMware ESXi (6.x):






      * [Instalar o ESXi](http://homelaber.com.br/vmware-homelab-parte-2-instalacao-vmware-esxi-2/)
      * Fazer o login com o vSphere Client
      * Navegar até a aba "Configuration" >> "Licenced Features"
      * Clicar em "Edit..." e digitar a sua chave de licença.


![free-esxi-60-enter-license](/imagens/2016/03/free-esxi-60-enter-license.png)




Por hoje é isso pessoal!

Deixe o seu comentário ou opinião aqui no post e nos siga nas redes sociais:

Twitter ([@Homelaber](http://twitter.com/homelaber))

Facebook ([fb.com/homelaber](http://fb.com/homelaber))

Youtube ([http://bit.ly/youtubehomelaber](http://bit.ly/youtubehomelaber)).
