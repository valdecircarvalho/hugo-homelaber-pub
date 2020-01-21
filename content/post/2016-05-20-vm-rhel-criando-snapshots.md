---
author: alexandre.parreira
date: 2016-05-20 20:09:02+00:00
draft: false
title: VM RHEL - Criando Snapshots
type: post
url: /vm-rhel-criando-snapshots/
categories:
- Tutoriais
series:
- VM RHEL para Desenvolvimento
tags:
- como-instalar
- Desenvolvimento
- homelab
- how-to
- linux
- RHEL
- vmware
---

**![ale-open-source](/imagens/2016/05/open-source-300x209.jpg)
**

Olá Homelabers!

Vamos ver como criar Snapshots de nossa VM para termos pontos de restauração do estado da máquina em caso de problemas ou mesmo se estivermos testando novos componentes ou funcionalidades temporariamente.

**Nível**: **Fácil.**

<!-- more -->

Este artigo se baseia na VM criada no artigo anterior da série:

[Preparando uma VM Red Hat Enterprise Linux para Desenvolvimento](http://homelaber.com.br/preparando-uma-vm-red-hat-enterprise-linux-para-desenvolvimento/).

Para criar Snapshots acessamos o menu VM > Snapshot > Take Snapshot.

![ale-snapshot-1](/imagens/2016/05/ale-snapshot-1.png)


Na passo seguinte fornecemos um nome e descrição. É importante dar um nome e descrição detalhados para nos lembramos o melhor possível do estado da VM e a finalidade do Snapshot. Por vezes trabalhamos por um bom tempo no ambiente e é possível esquecer o estado do snapshot e o impacto de se retornar a este snapshot.

![ale-snapshot-2](/imagens/2016/05/ale-snapshot-2.png)


Clique em _**Take a Snapshot**_.

Para visualizar e voltar a um Snapshot específico acesse _**VM > Snapshot > Snapshot Manager**_.

![ale-snapshot-3](/imagens/2016/05/ale-snapshot-3.png)


Agora podemos virar do avesso a instalação e fazer diversos testes que estamos seguros para retornar o ambiente ao estado original.

Por fim sempre podemos descartar Snapshots passados para liberar espeaço em disco.

Basta clicar com o botão direito no Snapshot e selecionar Delete.

Um abraço! Paz e sucesso a todos!

**Fim**.


