---
author: Valdecir Carvalho
date: 2015-03-16 12:00:51+00:00
draft: false
title: Como montar um HomeLab – Hardware
type: post
url: /como-montar-um-homelab-o-hardware/
categories:
- Homelab
tags:
- hardware
- homelab
- servidores
- virtualização
- vmware
---

Olá **HomeLabers**!

Pronto, você já sabe [Porque ter um HomeLab](http://homelaber.com.br/porque-ter-um-homelab/) e se decidiu a investir tempo e dinheiro para montar o seu primeiro HomeLab. Mas e agora? Por onde começar?

[caption id="attachment_139" align="aligncenter" width="692"]![HomeLab - Servidor Dell PowerEdge r710](/imagens/2015/03/Dell-PowerEdge-r710-11G.jpg)
Hardware é o que você chuta! Software é o que você xinga :D[/caption]



Nesse post vamos falar sobre o hardware necessário para começar a brincadeira e embarcar nesse viciante (não diga depois que eu não avisei!) mundo do HomeLab.

<!-- more -->

Antes de mais nada, um pequeno parêntese sobre os Tipos de Virtualizadadores.

Basicamente (e academicamente falando) existem **dois tipos de virtualizadore**s ou Hypervisors:



<blockquote>_**Tipo 1 – Nativo ou Bare-Metal**_: É o tipo de virtualizador que roda diretamente no Hardware (daí o Bare-Metal) controlando e interagindo com todos os seus dispositivos (disco, controladora, rede, processador, memória, etc.). Os sistemas mais conhecidos de virtualizadores do tipo 1 são: [Citrix Xen Server](http://www.citrix.com.br/products/xenserver/overview.html), [Oracle VM](http://www.oracle.com/us/technologies/virtualization/oraclevm/overview/index.html), [Microsoft Hyper-V](http://www.microsoft.com/pt-br/server-cloud/products/windows-server-2012-r2/default.aspx) e [VMware ESXi](http://www.vmware.com/br/products/esxi-and-esx/overview).

_Em termos de HomeLab você precisa ter um computador dedicado para rodar o Hypervisor_.

_**Tipo 2 – Hospedado ou Hosted**_: É o tipo de virtualizador que roda em cima de um sistema operacional. Os sistemas mais conhecidos de virtualizadores do tipo 2 são: [Oracle Virtualbox](https://www.virtualbox.org/), [VMware Workstation](http://www.vmware.com/br/products/workstation) e [VMware Fusion](http://www.vmware.com/br/products/fusion).

_Nesse caso, você pode rodar o Hypervisor diretamente do seu sistema operacional (Windows, Linux ou OSx) e ainda utilizar o computador para outras tarefas. Essa é uma excelente opção para rodar o seu HomeLab “on the go”, ou seja, onde você esteja, como no seu laptop por exemplo._</blockquote>





Agora que você já conhece os tipos de virtualizadores existentes, você deve escolher qual é a melhor solução para você.

O primeiro passo é definir o tipo de virtualizador que você irá utilizar em seu HomeLab (Bare-Metal ou Hosted).

O segundo passo é definir onde você irá rodar esse virtualizador, seja ele do tipo 1 ou 2.

Não quero ditar regras, apenas ajudar você a encontrar o melhor Hardware para que você possa montar o seu HomeLab. Não sou nenhum expert em hardware, portanto não consigo falar sobre tipos de placa mãe, latência de memória, etc. Faça suas pesquisas sobre isso. Na internet você irá encontrar diversos blogs (links no final do post) sobre VMware HomeLab (principalmente em Inglês) falando sobre hardware, mas tenha em mente que "lá fora" tudo é mais barato e muito mais fácil de se conseguir. Não se frustre :D

Então vamos lá:

**Hardware:**

Existem diversas maneiras de conseguir o hardware para o seu HomeLab.




  * Ir as compras e adquirir peça por peça para montar o seu computador.
  * Conseguir/Comprar um servidor usado no Mercado Livre, com um amigo ou ainda na sua empresa
  * Usar aquele desktop antigo que está jogado no canto do seu quarto pegando poeira (desde que ele não seja tão antigo assim!).
  * Usar o seu Laptop ou Desktop parrudão que você comprou para <del>jogar</del> estudar.


Independente da maneira que você consiga o seu hardware, você deve se atentar a algumas coisas:


      * **Processador:** Escolha um processador habilitado com tecnologia Intel VT ou AMD-V– O processador não é o item mais importante do seu HomeLab, portanto se precisar economizar, esse é o lugar. Tenho preferência por processadores Intel e no meu HomeLab uso processadores Intel i7.
      * **Memória:** Aqui quanto mais melhor. Compre sempre o máximo de memória que o seu processador permitir (e o seu bolso claro!), pois esse é o item que irá ser mais usado no seu HomeLab. Quanto mais memória, mais VMs você consegue rodar ao mesmo tempo. No meu HomeLab tenho hosts com 32GB e 16GB de memória. 8 GB são suficientes, mas se puder invista em no mínimo 16GB.
      * **Disco:** Faça o balanço entre tamanho x velocidade. Qualquer disco serve, mas se puder ter um SSD melhor. O tamanho vai limitar a quantidade de VMs que você vai rodar, já a velocidade vai limitar a quantidade de IOPS. Eu já montei um ambiente bem complexo (2 ESXi, 2 AD, vCenter, File Server, DHCP, DNS, Estações, etc.)  em um HD de 500GB rodando na USB do meu laptop. No meu HomeLab tenho diversos discos de vários tamanhos e estou planejando comprar alguns SSDs (esse Dollar que não para de subir!!!).
      * **Placa de Rede:** Procure por uma placa de rede de preferência Offboard e de boa qualidade (Intel). A placa on-board vai funcionar, mas o VMware ESXi é meio chatinho com isso. A quantidade, novamente vai depende do que você quer fazer. No meu HomeLab tenho hosts com 1, 2 e 4 placas.
      * **Placa de Vídeo**: Não tem muita importância se você não quiser trabalhar com VDI (Virtualização de Desktops) ou usar o seu servidor para servir video via passthrough (um tópico bastante adiantado).
      * **Monitor:** Se você for utilizar um hypervisor do tipo 1, um monitor será necessário apenas para o setup inicial ou para uma eventual manutenção. Eu tenho um monitor velho aqui para isso. Fica a seu critério.


No site da VMware você irá encontrar a [HCL](http://www.vmware.com/resources/compatibility/search.php) (Hardware Compatibility List) , onde constam os hardwares homologados pela VMware para rodar o VMware ESXi. Mas não se limite a isso, existem maneiras de fazer o seu harware não compatível funcionar (na maioria das vezes).

Antes de sair as compras, crie uma lista de prioridades para escolher o seu hardware (principalmente se você comprar ou conseguir um servidor), como por exemplo:




      * **Consumo de energia** – geralmente servidores corporativos consomem muita energia elétrica. Pesquise o consumo do hardware para não tomar um susto com a conta de luz no fim do mês.
      * **Nível de ruído** – o mesmo que o consumo de energia. Um servidor do tipo corporativo costuma fazer MUITO barulho e você (e seus familiares – principalmente sua esposa) não vai gostar nada de ficar com uma turbina de avião ligada dia e noite na sala ou no quarto.
      * **Local (onde você vai colocar o seu hardware)** – veja se você tem espaço para colocar seu servidor. Um local arejado, longe de crianças e curiosos, que não atrapalhe (consulte sua cara metade) e que tenha espaço para eventuais manutenções.
      * **Vida útil do equipamento** – a dica aqui é não cair na tentação de comprar um servidor que está baratinho no Mercado Livre se ele for muito velho.
      * **Custo** - o quanto você pode e quer gastar. O céu é o limite aqui. Você pode gastar uma pequena fortuna montando o seu HomeLab com "tudo do bom e do melhor". Defina um orçamento e se mantenha nele. Comece pequeno, resista a tentação de sair comprando tudo o que achar no Mercado Livre.


É isso, arregace as mangas e mão na massa. No próximo post, vamos falar sobre o Software para o seu HomeLab.

Deixe seu comentário e aproveite para nos seguir nas redes sociais.

<

p style="text-align: center;">**Links:** (Cuidado, você pode se deprimir vendo o quão barato esses caras pagam por hardware de excelente qualidade e a quantidade de "coisas" que eles tem em seus "Datacenters Caseiros" - já vi empresas que funcionam com muito menos do que eles tem em casa. Depois não diga que eu não avisei!)

[http://www.tinkertry.com/superguide-home-virtualization-server-enthusiasts-colorful-variety-of-esxi-whiteboxes/](http://www.tinkertry.com/superguide-home-virtualization-server-enthusiasts-colorful-variety-of-esxi-whiteboxes/)

[http://thehomeserverblog.com/esxi-lab-specs/](http://thehomeserverblog.com/esxi-lab-specs/)

[http://ethancbanks.com/2014/03/15/my-home-lab-esxi-5-5-server-build-and-the-logic-behind-it-all/](http://ethancbanks.com/2014/03/15/my-home-lab-esxi-5-5-server-build-and-the-logic-behind-it-all/)

[http://www.ivobeerens.nl/2015/01/05/new-whitebox-extending-home-lab/](http://www.ivobeerens.nl/2015/01/05/new-whitebox-extending-home-lab/)

[https://matthill.eu/projects/vmware-esxi-low-power-home-lab/](https://matthill.eu/projects/vmware-esxi-low-power-home-lab/)

[http://wahlnetwork.com/my-home-lab/](http://wahlnetwork.com/my-home-lab/)

[http://www.virtualizetips.com/2012/10/22/building-new-whitebox-servers-for-vmware-home-lab/](http://www.virtualizetips.com/2012/10/22/building-new-whitebox-servers-for-vmware-home-lab/)
