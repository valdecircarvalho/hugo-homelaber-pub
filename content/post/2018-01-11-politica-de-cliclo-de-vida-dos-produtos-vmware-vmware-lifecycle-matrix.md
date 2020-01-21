---
author: Valdecir Carvalho
date: 2018-01-11 15:43:47+00:00
draft: false
title: Política de Cliclo de Vida dos Produtos VMware (VMware Lifecycle Matrix)
type: post
url: /politica-de-cliclo-de-vida-dos-produtos-vmware-vmware-lifecycle-matrix/
categories:
- Blog
- VMware
tags:
- blog
- esxi 5.5
- suporte esxi
- suporte vmware
- suporte vsphere
- vcenter server 5.5
- vmware
- vmware lifecicle matrix
- vSphere
- vsphere 5.5
---

Olá Homelabers!

**Qual versão do vSphere vocês estão utilizando em produção ou em seus labs?**

Particularmente, ainda estou rodando meu lab na versão 6.0.X, mas estou planejando um upgrade para o 6.5 em breve - com posts, aguarde! :)

Outro dia vi um tweet do Emad Younis (@emad_younis) sobre o fim do suporte geral do vSphere 5.5 (caramba já!!!) em Setembro/2018 e resolvi resgatar esse post e que estava nos rascunhos do blog.

https://twitter.com/emad_younis/status/950820777674158081

Hoje quero falar sobre a **Política de Ciclo de Vida dos produtos VMware** (**Lifecycle Matrix**), um ponto super importante, mas que vejo pouca gente falando sobre.

Em linhas gerais, a política do ciclo de vida dos produtos VMware é a seguinte:



<blockquote>A VMware suportará a versão atual do software de acordo com os Termos e Condições de Suporte e Subscrição. **Após** a disponibilidade geral (**GA**) **do próximo lançamento principal**, a VMware **suportará o lançamento principal imediatamente anterior** e seus lançamentos menores **por mais 18 meses.**</blockquote>



















Os produtos da VMware tem **um ciclo de vida de 7 anos**, sendo **5 anos de General Support** a partir do GA (General Availability) e mais** dois anos de Technical Guidance**.

![](/imagens/2018/01/vmware-lifecycle-police-matrix.jpg)



### 




## Fase geral de suporte (General Support Phase)


A fase de suporte geral começa na data de disponibilidade geral de uma versão principal ("GA") e tem uma duração fixa. Durante a fase de Suporte geral, para os clientes que compraram o suporte da VMware, a VMware oferece atualizações, correções de erros e segurança e assistência técnica, de acordo com os Termos e Condições de Suporte e Subscrição.


<blockquote>**End of General Support não significa NÃO SUPORTADO!**</blockquote>



































## Fase de orientação técnica (Technical Guidance Phase)


A **orientação técnica**, se disponível, **é fornecida a partir do final da fase de suporte geral** e tem uma duração fixa. A orientação técnica **está disponível principalmente através do portal de auto-ajuda** e o **suporte por telefone não é fornecido**. Os clientes também podem abrir um pedido de suporte on-line para **receber suporte e soluções alternativas** para problemas de baixa gravidade **apenas nas configurações suportadas**. Durante a fase de Orientação Técnica, a VMware **não oferece suporte** a novo hardware, atualizações do servidor / cliente / host, novos patches de segurança ou correções de erros. Esta fase destina-se a ser **utilizada por clientes que operam em ambientes estáveis** ​​com sistemas que operam sob cargas razoavelmente estáveis.


































## Fim da Vida de Suporte (End Of Support Life)


Um **produto atingiu o fim da vida de suporte** (EOSL) quando já **não é **geralmente** suportado pela VMware**. O fim da vida de suporte para um produto específico é o final do suporte geral ou final da orientação técnica, se disponível para esse produto específico.


































## Fim da Disponibilidade (EOA) / Fim da Distribuição (EOD)


Um produto **chegou ao fim da disponibilidade quando já não está disponível para compra da VMware**. Um produto chegou ao fim da distribuição quando a VMware não pode mais disponibilizá-la como download da vmware.com ou distribuir o produto de outras maneiras. O **fim da disponibilidade e o final da distribuição podem coincidir**.



















## Resumo do suporte ao ciclo de vida



<table width="997" >
<tbody >
<tr >

<td width="548" >Características
</td>

<td width="125" style="text-align: center;" >Fase geral de suporte
</td>

<td width="132" style="text-align: center;" >Fase de orientação técnica
</td>

<td width="192" style="text-align: center;" >Fim da sustentação Fase de vida Fim da disponibilidade
</td>
</tr>
<tr >

<td >Atualizações e atualizações de manutenção
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >
</td>

<td style="text-align: center;" >
</td>
</tr>
<tr >

<td >Novos patches de segurança
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >
</td>

<td style="text-align: center;" >
</td>
</tr>
<tr >

<td >Novas correções de erros
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >
</td>

<td style="text-align: center;" >
</td>
</tr>
<tr >

<td >Novo suporte de hardware
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >
</td>

<td style="text-align: center;" >
</td>
</tr>
<tr >

<td >Atualizações do Servidor, Cliente e Convidado OS
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >
</td>

<td style="text-align: center;" >
</td>
</tr>
<tr >

<td >Arquivar um pedido de suporte
</td>

<td style="text-align: center;" >Telefone e Web
</td>

<td style="text-align: center;" >Apenas na Web
</td>

<td style="text-align: center;" >
</td>
</tr>
<tr >

<td >Correções de segurança existentes
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >
</td>
</tr>
<tr >

<td >Correções de erros existentes
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >
</td>
</tr>
<tr >

<td >Soluções alternativas para problemas de baixa gravidade (gravidade 2, 3 e 4)
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >
</td>
</tr>
<tr >

<td >Suporte baseado em auto-ajuda na web
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >
</td>
</tr>
<tr >

<td >Acesso à Base de Conhecimento
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >X
</td>

<td style="text-align: center;" >X
</td>
</tr>
</tbody>
</table>



## VMware Lifecycle Product Matrix



Como comentei no começo do post, o vSphere 5.5 está chegando ao fim do suporte em setembro desse ano (2018). A VMware publica uma planilha com o ciclo de vida de todos os seus produtos e essa planilha pode ser encontrada nesse [link](https://www.vmware.com/content/dam/digitalmarketing/vmware/en/pdf/support/product-lifecycle-matrix.pdf) (pdf)

<table width="665" >
<tbody >
<tr >

<td width="220" style="text-align: center;" >**PRODUCT RELEASE**
</td>

<td width="123" style="text-align: center;" >**GENERAL AVAILABILITY**
</td>

<td width="167" style="text-align: center;" >**END OF GENERAL SUPPORT**
</td>

<td width="155" style="text-align: center;" >**END OF TECHINICAL GUIDANCE**
</td>
</tr>
<tr >

<td >ESXi 5.5 / VCENTER SERVER 5.5
</td>

<td style="text-align: center;" >19/09/13
</td>

<td style="text-align: center;" >**19/09/18**
</td>

<td style="text-align: center;" >19/09/20
</td>
</tr>
<tr >

<td >ESXi 6.0 / VCENTER SERVER 6.0
</td>

<td style="text-align: center;" >21/03/15
</td>

<td style="text-align: center;" >12/03/20
</td>

<td style="text-align: center;" >12/03/22
</td>
</tr>
<tr >

<td >ESXi 6.5 / VCENTER 6.5
</td>

<td style="text-align: center;" >15/11/16
</td>

<td style="text-align: center;" >15/11/21
</td>

<td style="text-align: center;" >15/11/23
</td>
</tr>
</tbody>
</table>

É importante ficar de olho nos anúncios dos fabricantes - não só da VMware - para se planejar e não ser pego de surpresa e ficar sem suporte.

Deixe ai nos comentários, qual o software mais antigo que você tem em produção hoje?

Mais informações aqui >> [https://www.vmware.com/support/policies/lifecycle.html](https://www.vmware.com/support/policies/lifecycle.html)



Um abraço e até o próximo post!

--VC
