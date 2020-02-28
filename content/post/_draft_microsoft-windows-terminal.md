+++
author = "Valdecir Carvalho"
title = "Microsoft Windows Terminal - Instalação e Customização"
date = "2020-02-26 07:00:00"
publishDate = "2020-02-26 07:00:00"
type = "post"
draft = "true"
link = ""
url = "/microsoft-windows-terminal-instalacao-e-customizacao"
image = "/imagens/2020/MM/imagem.jpg"
description = "description"
tags = [
    "",
    "",
    "",
	"",
    "",
]
categories = ["Blog", ""]
+++

![image title](/imagens/2020/MM/imagem.jpg)

Olá Homelabers!

O assunto do post de hoje é o Microsoft Windows Terminal.
Depois que migrei do MacOS para o Windows, eu sinto muito falta do iTerm e naturalmente acabei usando mais o Windows Terminal.
Ele não é perfeito, ainda estou testando outras opções, mas isso é assunto para um outro post.


{{< target-blank title="" url="" >}}

## Windows Terminal
----

A Microsoft lançou o **Windows Terminal** - que ainda está em **Preview** - {{< target-blank title="em Maio de 2019" url="https://devblogs.microsoft.com/commandline/introducing-windows-terminal/" >}}, como uma alternativa ao antigo CMD, que oferece diversas opções encontradas nos softwares de terminal mais modernos.

O Windows Terminal é um projeto **Open Source** - _sim haters, a Microsoft lança produtos Open Source_ - seu código fonte está disponível no {{< target-blank title="Github" url="https://github.com/Microsoft/Terminal" >}} e está em constante evolução. {{< target-blank title="O último release (v0.9) foi lançado no dia 13 de Fevereiro de 2020" url="https://devblogs.microsoft.com/commandline/windows-terminal-preview-v0-9-release/" >}}. 

Você pode acompanhar os releases no repositório do {{< target-blank title="github" url="https://github.com/microsoft/terminal/releases" >}}  e também no {{< target-blank title="Blog Windows Command Line" url="https://devblogs.microsoft.com/commandline/" >}}.

## Principais Features
----

As principais features do Windows Terminal são:

- Multiplas abas
- Suporte a teclas de atalho
- Suporte a fontes, cores e ícones
- Suporte a paineis
- Altamente customizável

O Windows terminal oferece suporte ao CMD, Powershell (múltiplas versões), Powershell Core e WSL (Windows Subsystem for Linux).

https://youtu.be/8gw0rXPMMPE


## Como instalar o Windows Terminal?
----

Para instalar o Windows Terminal, seu PC precisa estar rodando **Windows 10 versão 18362.0 ou posterior**.

O Windows Terminal pode ser instalado de várias maneiras. 

Eu prefiro utilizar o gerenciador de pacotes Chocolatey - {{< target-blank title="eu já falei sobre ele aqui nesse post" url="https://homelaber.com.br/chololatey-um-gerenciador-e-instalador-de-programas-para-windows/" >}}. Basta executar o comando `choco install microsoft-windows-terminal`

Outra maneira é baixar o instalador na página de {{< target-blank title="releases" url="https://github.com/microsoft/terminal/releases" >}} no Github e instalar manualmente.

Outra opção - e talvez e mais fácil para o usuário comum - é via Microsoft Store {{< target-blank title="(link)" url="https://www.microsoft.com/pt-br/p/windows-terminal-preview/9n0dx20hk701?activetab=pivot:overviewtab" >}}


## Como customizar o Windows Terminal
----

Uma das features mais legais do Windows Terminal é a possibilidade de customizá-lo de acordo com suas preferencias.

Ainda não é uma coisa "muito fácil" pois envolve editar um arquivo `.json` mas também não é nada de outro mundo. Vou tentar mostrar nesse post algumas customizações que podem ser feitas, como fazer e depois é com você!

Após abrir o Windows Terminal, clique na setinha para baixo e depois na engrenagem (Settings). O arquivo `profiles.json` será aberto no seu editor de texto preferido - no meu caso uso o Visual Studio Code.

A primeira modificação que você pode fazer é alterar o `"defaultProfile"` e escolher qual sistema será aberto (Powershell, CMD, WSL, Powershell Core, etc). Basta trocar o valor da chave (GUID) para o de sua preferência. Eu deixo sempre como padrão o Powershell Core.

Você pode criar o seu próprio profile utilizando como ponto de partida o código abaixo. Mas atenção, o campo `GUID` deve ser único.

```
{
"startingDirectory": "%USERPROFILE%",
"guid": "{565ed1db-1474-455e-9d62-cb9fc7eb3f59}",
"name": "PowerShell",
"background": "#012456",
"colorscheme": "Campbell",
"historySize": 9001,
"snapOnInput": true,
"cursorColor": "#FFFFFF",
"cursorShape": "bar",
"commandline": "powershell.exe",
"fontFace": "Courier New",
"fontSize": 12,
"acrylicOpacity": 0.5,
"useAcrylic": false,
"closeOnExit": true,
"padding": "0, 0, 0, 0",
"icon": "ms-appdata:///roaming/pwsh-32.png"
},
```






## Subititle-5
----



----
