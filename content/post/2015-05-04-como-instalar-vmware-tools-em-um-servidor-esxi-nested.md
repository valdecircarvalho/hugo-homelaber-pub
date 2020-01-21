---
author: Valdecir Carvalho
date: 2015-05-04 12:00:03+00:00
draft: false
title: Como instalar VMware Tools em um servidor ESXi (nested)
type: post
url: /como-instalar-vmware-tools-em-um-servidor-esxi-nested/
categories:
- Homelab
post_format:
- Nota
tags:
- como-instalar
- home lab
- homelab
- how-to
- instalação vmware tools
- laboratório vmware
- nested esxi
- vmware
- vmware esxi
- vmware tools nested esxi
---

Olá Homelabers!

Neste post vamos instalar o VMware Tools em um servidor ESXi.

Uma instalação "nested" é quando você instalar um virtualizador em cima de outro virtualizador, ou seja,  instalar o VMware ESXi como uma VM de um outro servidor ESXi. Vale lembrar que **essa função não é suportada pela VMware** e deve ser utilizada **somente em laboratório**, **NUNCA em produção**.

![](/imagens/2015/05/nested-esxi.png)


<!-- more -->



<blockquote>_**Visão geral do VMware Tools (fonte: [http://vmw.re/1I19cdH](http://vmw.re/1I19cdH))**_

_O VMware Tools é um conjunto de utilitários que melhora o desempenho da máquina virtual do sistema operacional convidado e aprimora o gerenciamento da máquina virtual. Sem o VMware Tools instalado no sistema operacional convidado, o desempenho do sistema convidado pode sofrer com a falta de funcionalidades importantes. A instalação do VMware Tools elimina ou soluciona os seguintes problemas:_

> 
> 
      * _Baixa resolução de vídeo_
      * _Profundidade de cor inadequada_
      * _Exibição da velocidade de rede incorreta_
      * _Movimento limitado do mouse_
      * _Incapacidade de copiar, colar, arrastar e soltar arquivos_
      * _Som ausente_

</blockquote>



Instalar o VMware Tools em um servidor ESXi irá facilitar bastante o gerenciamento do seu home lab.

Então vamos lá:

A primeira coisa que você deve fazer é configurar o seu servidor ESXi para aceitar conexões via SSH, para isso vá até a aba "Configuration".

![2015-05-01_20-13-38](/imagens/2015/05/2015-05-01_20-13-38.png)


Depois clique em "Properties..."

![2015-05-01_20-14-00](/imagens/2015/05/2015-05-01_20-14-00.png)


Na tela "Service Properties" verifique se o serviço SSH está"Running". Se estiver, basta voltar para a tela anterior.

![2015-05-01_20-14-13](/imagens/2015/05/2015-05-01_20-14-13.png)


Caso contrário, clique em "Options..." e selecione a opção "Start and stop with host". Depois clique em "Start" e "OK".

![2015-05-01_20-14-26](/imagens/2015/05/2015-05-01_20-14-26.png)


Agora abra o seu software de terminal para acessar o servidor via SSH. Se você não tiver um software de terminal instalado, recomendo utilizar o [Putty](http://pt.wikipedia.org/wiki/PuTTY). Você pode fazer o download do Putty [aqui](http://bit.ly/1OOWapi). É um arquivinho com pouco mais de 500kb.

Feito isso, abra o Putty e coloque o IP do seu servidor ESXi e clique "Open".

![2015-05-01_20-14-51](/imagens/2015/05/2015-05-01_20-14-51.png)


Faça o login com o seu usuário e senha (se você estiver aplicando essa configuração no servidor que configuramos no último post da série, o usuário é root e a senha install).

![2015-05-01_20-18-17](/imagens/2015/05/2015-05-01_20-18-17.png)


Digite a linha de comando :


    
    esxcli software vib install -v http://download3.vmware.com/software/vmw-tools/esxi_tools_for_guests/esx-tools-for-esxi-9.7.1-0.0.00000.i386.vib -f



Só lembrando que o seu servidor deve ter acesso a internet para funcionar.

![2015-05-01_20-18-50](/imagens/2015/05/2015-05-01_20-18-50.png)


Após algum tempo, a instalação estará completa. Faça um reboot no servidor e pronto!

![2015-05-01_20-19-52](/imagens/2015/05/2015-05-01_20-19-52.png)


![2015-05-01_20-30-12](/imagens/2015/05/2015-05-01_20-30-12.png)


Mais informações podem ser encontradas no site [VMware Flings](https://labs.vmware.com/flings/vmware-tools-for-nested-esxi)

![2015-05-01_20-17-21](/imagens/2015/05/2015-05-01_20-17-21.png)


Até a próxima!

Não se esqueça de deixar o seu comentário no post, seguir o HomeLaber no[Twitter](https://twitter.com/homelaber) (@Homelaber) e curtir a nossa página no [Facebook](https://www.facebook.com/homelaber) (fb.com/homelaber) para ficar sempre atualizado das novidade do blog.
