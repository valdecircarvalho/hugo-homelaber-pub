---
author: Valdecir Carvalho
date: 2019-10-23 10:00:29+00:00
draft: false
title: Chololatey - Um gerenciador e instalador de programas para Windows
type: post
url: /chololatey-um-gerenciador-e-instalador-de-programas-para-windows/
categories:
- Blog
- Blogtober
- Homelab
- Microsoft
- Review
- Tools
tags:
- Automação
- blog
- blogtober
- blogtober2019
- choco install
- chocolatey
- chocolatey software
- devops
- microsoft windows
- nuget
- package manager
- pacotes
- powershell
- Review
- tools
- Windows
---

Olá Homelabers!

Como vocês fazem para instalar seus programas e softwares prediletos em um computador novo ou recém instalado?

Hoje vou falar sobre o software [Chololatey](https://chocolatey.org/), um gerenciador e instalador de programas para Microsoft Windows.



## O que é o Chocolatey?



O Chocolatey não é um produto novo, mas muita gente ainda não conhece ou se conhece não utiliza e a ideia desse post é mostrar para vocês como ele pode ser útil no seu dia a dia.

Eu confesso que por muito tempo, torci o nariz para o uso do Chocolatey, mas depois de ler bastante a documentação, vez muita gente usando e principalmente confiar inteiramente no Homebrew do MacOS, mudei minha opinião.

![](/imagens/2019/10/chocolate-feature-800x400-644x322.png)
Pense no Chocolatey como um **apt-get** ou **yum** do Linux ou** [Homebrew](https://brew.sh/index_pt-br)** do MacOS para Windows. Com o Chocolatey, você conseguirá **instalar, atualizar e atualizar** programas no Windows através da **linha de comando ou scripts**.

O Chocolatey é um software open source (licença [Apache 2](https://github.com/chocolatey/choco/blob/master/LICENSE)) e está disponível em 3 versões:




      * Open Source - **uso pessoal e corporativo**, sem custos e limites
      * Pro - **uso pessoa**l em até 8 computadores pago anualmente.
      * Business (C4B) - **uso empresarial** pago por computador


As vantagens e o comparativo de cada versão e sua licença podem ser encontradas nesse [link](https://chocolatey.org/compare), mas basicamente com a versão paga você passa a ter acesso ao suporte, uma console central de gerenciamento, auditoria, cache, pacotes verificados, etc.



## Uso corporativo



Bacana, gostei... mas eu posso utilizar o Chocolatey na minha empresa ou nos meus clientes?

**A resposta é sim!** Por ser um software open source você pode utilizar o Chocolatey na sua empresa ou nos seus clientes, mas o recomendado é que você utilize a versão **Business** onde você paga um valor anual por computador e tem todas as features da versão open source com o foco em segurança, produtividade e visibilidade ([mais informações sobre a versão business aqui](https://chocolatey.org/products#chocolatey-for-business)).

Considerando o baixo valor de investimento, ganho em tempo mo gerenciamento de software e comprado com uma solução mais robusta como o Microsoft System Center, se você cuida do TI de uma empresa pequena, acredito ser um excelente investimento.



## Mas e a segurança?



Como disse mais acima, eu sempre torci o nariz para o Chocolatey, principalmente para uso empresarial.

Você está instalando um software empacotado por alguém que você não conhece (a comunidade) na sua rede corporativa (seus preciosos dados). De cara existe um gap de segurança muito grande ai certo?

Pois então, pesquisando mais a fundo para escrever esse post, fui ler as [políticas de segurança publicada na wiki do Chocolatey](https://github.com/chocolatey/choco/wiki/Security) (e recomendo que você também faça isso) e deu para perceber que eles levam esse assunto muito a sério. Os pacotes - mesmo os da comunidade - passam por um processo de review e moderação e são checados por antivirus para dizer o mínimo. Então minhas recomendações sobre segurança são:




      * **Se você é uma empresa PAGUE pelo software** e tenha segurança e suporte. Pense no tempo economizado para instalar e principalmente atualizar os softwares.
      * Utilize apenas **pacotes revisados e aprovados **(bolinha verde)
      * **Leia as informações do pacote** que irá instalar.
      * **Leia os comentários**
      * **Teste** antes em um **ambiente isolado e controlado**.


Mas no final do dia, estamos CONFIANDO nos pacotes gerados e mantidos pela comunidade. Da mesma forma que confiamos em rodar um apt-get install no Ubuntu ou brew install no Mac.



## No passado era assim...



No passado para instalar um software qualquer para Windows, a maneira mais comum era o famoso **NNF - Next >> Next >> Finish** e pronto, seu software estava instalado. Mas desse modo, você precisa estar obrigatoriamente na frente do computador, não pode estar fazendo mais nada e as opções de automatização são praticamente zero.

![](/imagens/2019/10/chocolatey-next-next-finish-300x221.jpg)


Com o uso de ferramentas de gerenciamento de pacotes, você passa a ter possibilidade de **automatizar, criar scripts para instalação, atualização e remoção de pacotes (programas)**, ou seja, um mundo totalmente novo para usuários Windows.



## Como instalar o Chocolatey



A instalação do Chocolatey é bastante simples e pode ser feitas de diversas maneiras. Aqui vou mostrar como eu usei no meu PC, via CMD.

Os requisitos mínimos para rodar o Chocolatey são:




      * Windows 7/Windows Server 2003 ou superior
      * Powershell v2 ou superior (não funciona com Powershell Core ainda)
      * .NET Framework 4 ou superior – se você não tiver instalado, o Chocolatey instala para você.



      1. Abra o prompt de comando do Windows (CMD) com acesso administrativo
      2. Execute o comando: `@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"`
      3. Feito! Simples assim. A partir de agora, você já pode começar a utilizar o Chocolatey em seu computador.


Para consultar outras formas de instalar o Chocolatey no seu computador consulte a [documentação oficial](https://chocolatey.org/docs/installation)



## Como usar o Chocolatey



Após a instalação chegou a hora de botar a mão na massa e utilizar o Chocolatey.
O primeiro comando que você deverá usar é o `choco -? | more` que vai mostrar o help do programa e seus principais comandos.

`choco install "nome do pacote"`  Instala um programa ou pacote. Use a flag -y para não pedir confirmação

![](/imagens/2019/10/choco_install-644x436.gif)


`choco search`  Lista/busca os pacotes existentes no repositório. Use a flag --local-only para listar apenas os pacotes instalados em seu sistema via Chocolatey

![](/imagens/2019/10/choco_search-644x436.gif)


`choco uninstall "nome do pacote"` Remove ou desinstala um pacote previamente instalado.

![](/imagens/2019/10/choco_uninstall-644x436.gif)


`choco upgrade "nome do pacote"` --> Atualiza um pacote previamente instalado. Use a flag all para atualizar todos os pacotes.

![](/imagens/2019/10/choco_upgrade-644x436.gif)




## Pacotes



Os pacotes ou packages são de fato os programas que serão instalados em seu computador utilizando o Chocolatey. Cada pacote contém as instruções codificadas para a instalação, atualização e remoção do programa.

No site https://chocolatey.org/packages você encontrará um extenso catálogo com todos os pacotes disponíveis para instalação, assim como os comandos para instalar, atualizar e remover e ainda o status de cada pacote, o responsável pela verificação e certificação do pacote e outras informações úteis.

![](/imagens/2019/10/chocolatey-pacotes-644x314.png)


Você poderá fazer pesquisas pelo nome do software que precisa, filtrar por categoria, popularidade, status etc.



## Como eu uso o Chocolatey



O meu uso do Chocolatey é basicamente em casa e no lab.

Eu procuro instalar todos os softwares do meu PC através do Chocolatey, facilitando assim, principalmente o upgrade/update dos softwares e sempre que possível utilizando scripts.

Aqui você poderá ver um exemplo de um script em Powershell para instalar automaticamente vários softwares utilizando o Chocolatey

https://gist.github.com/valdecircarvalho/a9c41dd716820d669fc278afd7049f29



## Alternativas ao Chocolatey



Existem algumas outras soluções de gerenciamento de pacotes para Microsoft Windows, mas pelo que pesquisei, nenhuma é tão robusta, sólida e madura quanto o Chocolatey. Vou deixar aqui algumas opções, mas deixo claro que ainda não cheguei a testar pessoalmente nenhuma delas.




      * Scoop - [https://scoop.sh/](https://scoop.sh/)
      * Just-Install - [https://just-install.github.io/](https://just-install.github.io/)
      * Appget - [https://appget.net/](https://appget.net/)


Se você conhece e/ou usa alguma das ferramentas acima ou alguma outra que deixei de fora, deixei sua opinião nos comentários no meu Twitter



## O que mais pode ser feito?



O céu e sua imaginação são o limite. Após conhecer e testar o feijão-com-arroz do Chocolatey que é a instalação/atualização/remoção de softwares, você pode passar a olhar a ferramenta com outros olhos.




      * Automatize o processo de deploy de suas máquinas com scripts
      * Automatize o upgrade do seu parque com tarefas do windows ou psexec
      * Crie um repositório interno com os softwares homologados para sua empresa
      * Automatize o processo de instalação do seu ambiente de DevOps com suas ferramentas preferidas
      * Explore as opções de [integração com ferramentas de gerenciamento de configuração](https://chocolatey.org/docs/features-infrastructure-automation) como Ansible, Chef, Puppet, etc.
      * Aprenda a [criar pacotes](https://chocolatey.org/docs/create-packages) com aquele software especifico que só a sua empresa usa


Recursos:

No site do Chocolatey, você irá encontrar diversos recursos disponíveis para seguir com seus estudos sobre a ferramenta.


      * Documentação oficial - [https://chocolatey.org/docs](https://chocolatey.org/docs)
      * Wiki - [https://github.com/chocolatey/choco/wiki](https://github.com/chocolatey/choco/wiki)
      * Github - [https://github.com/chocolatey/choco](https://github.com/chocolatey/choco)
      * Cursos - [https://chocolatey.org/courses](https://chocolatey.org/courses)
      * Estudo de casos - [https://chocolatey.org/resources](https://chocolatey.org/resources)
      * Pacotes - [https://chocolatey.org/packages](https://chocolatey.org/packages)
      * Reddit - [https://www.reddit.com/r/chocolatey/](https://www.reddit.com/r/chocolatey/)
      * Twitter - [https://twitter.com/chocolateynuget](https://twitter.com/chocolateynuget)
      * Canal Youtube - [https://www.youtube.com/chocolateysoftware](https://www.youtube.com/chocolateysoftware)


E por ser uma ferramenta já bastante sólida, você irá encontrar muitas informações e artigos pela internet.



## Considerações finais



Recentemente eu migrei do MacOS para o Windows e tive que fazer o setup do meu novo computador (mais sobre isso em outro post onde vou contar sobre a migração). A primeira coisa que eu fiz, foi tentar automatizar ao máximo o processo para evitar ter que fazer tudo manualmente e acabei resgatando e olhando com mais carinho para o Chocolatey - que me ajudou muito no processo.

Para pessoas comuns e pequenas empresas, acredito que seja uma excelente opção de gerenciamento de software - principalmente para instalações e updades/upgrades - por facilita muito o processo de setup de uma nova máquina e na minha visão é bem melhor do que usar imagens.

Para empresas grandes, mesmo a versão Enterprise não vejo muito como uma solução a ser adotada - existem vários cases - por diversos fatores, principalmente porque esse é um terreno já dominado pelo Microsoft System Center.

Eu já entrei em contato com o pessoal Chocolatey pedindo uma licença NFR da versão Business para testar no lab, estudar e escrever um artigo, vamos ver no que vai dar!

Se você já usa o Chocolatey em casa, na sua empresa ou nos seus clientes, deixe nos comentários a sua opinião, quero muito saber como outras pessoas estão usando o produto.

Até a próxima!
