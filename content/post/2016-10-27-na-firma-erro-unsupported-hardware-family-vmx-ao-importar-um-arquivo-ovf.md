---
author: Valdecir Carvalho
date: 2016-10-27 11:00:01+00:00
draft: false
title: 'Na FIRMA - Erro: Unsupported hardware family vmx ao importar um arquivo .OVF'
type: post
url: /na-firma-erro-unsupported-hardware-family-vmx-ao-importar-um-arquivo-ovf/
categories:
- Tutoriais
tags:
- erro
- erro importar ovf
- erro importar ovf vmware
- erro vmware
- Unsupported hardware family vmx during OVF import
---

Olá Homelabers!

No post de hoje vou contar uma situação que enfrentei na **FIRMA** e como resolvi o problema. Acredito que isso possa ser útil para muita gente. Então vamos lá:

Hoje a tarde recebi um fornecedor que iria fazer um deploy de uma VM com um software para uma PoC (Prova de Conceito ou Proof of Concept em Inglês). Ele me trouxe um HD com o o OVF, os discos, etc. Até ai tudo fácil e normal. Fazer deploy de OVF é fácil.

Quando comecei a importação do OVF, tomei o seguinte erro:



<blockquote>**This OVF package uses features that are not supported. ****The OVF package requires unsupported hardware. Details: Line 31: Unsupported hardware family 'vmx-11'.**</blockquote>



![This OVF package uses features that are not supported. The OVF package requires unsupported hardware. Details: Line 31: Unsupported hardware family 'vmx-11'](/imagens/2016/10/2016-10-25-19_07_02-Deploy-OVF-Template.png)




## Unsupported hardware family vmx- during OVF import



Logo suspeitei que fosse a **versão do ESXi que a VM foi exportada**. Fui consultar a[** base de KB's da VMware**](https://kb.vmware.com/selfservice/microsites/microsite.do) e encontrei um [artigo](https://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=1003746) explicando as **versões de hardware de uma VM** - **Virtual machine hardware versions (1003746)** e nesse artigo descobri que a familia vmx-11 se refere a VMs criadas no ESXi 6.x. Como o meu ambiente lá na FIRMA roda em ESXi 5.5 matei o problema na hora.

Agora tinha que descobrir como converter um OVF criado na versão 6.x para a versão 5.5 do VMware ESXi. Mais uma vez com a ajudinha do Google, [encontrei um artigo no Running-System.com](http://www.running-system.com/unsupported-hardware-family-vmx-10-during-ovf-import/) de Julho de 2015 que ensinava a converter um OVF da familia vmx-10. Tentei o mesmo procedimento e deu certo. Vou reproduzir aqui para vocês o que eu fiz.

![troubleshooting](/imagens/2016/10/troubleshooting.jpg)


<!-- more -->

**1. Editar o arquivo .OVF para trocar a versão do hardware**




      * Faça uma cópia do arquivo .ovf
      * Abra o arquivo e edite a seguinte linha:
_<VirtualHardwareSection>_
_ <Info>Virtual hardware requirements</Info>_
_ <System>_
_ <vssd:ElementName>Virtual Hardware FamilyElementName>_
_ <vssd:InstanceID>0InstanceID>_
_ <vssd:VirtualSystemIdentifier>OracleBigDataDiscovery1.2VirtualSystemIdentifier>_
_ <vssd:VirtualSystemType>**vmx-11**</vssd:VirtualSystemType>_
_ </System>_
      * Troque o **vmx-11** por **vmx-10** que é a família da VM do ESXi 5.5
      * Salve o arquivo e "reserve".


![2016-10-26_00-08-09](/imagens/2016/10/2016-10-26_00-08-09-300x203.png)





  1. Editar o arquivo .mf e trocar o hash que representa o arquivo .ovf O hash desse arquivo usa SHA-1



      * Acessar o site [http://onlinemd5.com/](http://onlinemd5.com/)


![2016-10-26_00-46-04](/imagens/2016/10/2016-10-26_00-46-04-300x134.png)





      * Carregar o arquivo **.ovf alterado**
      * Calcular o **valor do hash SHA-1**
      * Trocar o **hash do arquivo antigo** para **hash do arquivo editado**
      * Salvar o arquivo .mf


![2016-10-26_00-12-52](/imagens/2016/10/2016-10-26_00-12-52.png)




Após isso, é só voltar a fazer o deploy do .ovf normalmente no ESXi e pronto. Vai passar liso!

<table cellpadding="0" style="width: 557px;" cellspacing="0" >
<tbody >
<tr style="height: 38.5627px;" >

<td style="width: 259.319px; height: 38.5627px; text-align: center;" >**Virtual Hardware Version**
</td>

<td style="width: 300.681px; height: 38.5627px; text-align: center;" >**Products**
</td>
</tr>
<tr style="height: 70px;" >

<td style="width: 259.319px; height: 70px; text-align: center;" >12
</td>

<td style="width: 300.681px; height: 70px;" >Fusion 8.x
Workstation Pro 12.x
Workstation Player 12.x
</td>
</tr>
<tr style="height: 93px;" >

<td style="width: 259.319px; height: 93px; text-align: center;" >11
</td>

<td style="width: 300.681px; height: 93px;" >Fusion 7.x
Workstation 11.x
Player 7.x
**ESXi 6.x**
</td>
</tr>
<tr style="height: 93px;" >

<td style="width: 259.319px; height: 93px; text-align: center;" >10
</td>

<td style="width: 300.681px; height: 93px;" >**ESXi 5.5**
Fusion 6.x
Workstation 10.x
Player 6.x
</td>
</tr>
<tr style="height: 93px;" >

<td style="width: 259.319px; height: 93px; text-align: center;" >9
</td>

<td style="width: 300.681px; height: 93px;" >ESXi 5.1
Fusion 5.x
Workstation 9.x
Player 5.x
</td>
</tr>
<tr style="height: 93px;" >

<td style="width: 259.319px; height: 93px; text-align: center;" >8
</td>

<td style="width: 300.681px; height: 93px;" >ESXi 5.0
Fusion 4.x
Workstation 8.x
Player 4.x
</td>
</tr>
<tr style="height: 163px;" >

<td style="width: 259.319px; height: 163px; text-align: center;" >7
</td>

<td style="width: 300.681px; height: 163px;" >ESXi/ESX 4.x
Fusion 3.x
Fusion 2.x
Workstation 7.x
Workstation 6.5.x
Player 3.x
Server 2.x
</td>
</tr>
<tr style="height: 23px;" >

<td style="width: 259.319px; height: 23px; text-align: center;" >6
</td>

<td style="width: 300.681px; height: 23px;" >Workstation 6.0.x
</td>
</tr>
<tr style="height: 93px;" >

<td style="width: 259.319px; height: 93px; text-align: center;" >4
</td>

<td style="width: 300.681px; height: 93px;" >ACE 2.x
ESX 3.x
Fusion 1.x
Player 2.x
</td>
</tr>
<tr style="height: 140px;" >

<td style="width: 259.319px; height: 140px; text-align: center;" >3 and 4
</td>

<td style="width: 300.681px; height: 140px;" >ACE 1.x
Lab Manager 2.x
Player 1.x
Server 1.x
Workstation 5.x
Workstation 4.x
</td>
</tr>
<tr style="height: 46px;" >

<td style="width: 259.319px; height: 46px; text-align: center;" >3
</td>

<td style="width: 300.681px; height: 46px;" >ESX 2.x
GSX Server 3.x
</td>
</tr>
</tbody>
</table>

Uma informação importante: **A VM não vai ligar se vc utilizar uma versão de VM acima do ambiente instalado. Ex. O ESXi 6 vai rodar uma VM criada no ESXi 5.X, mas o contrário não é verdade.**

É isso ai pessoal! Até a próxima!

VC
