+++
author = "Valdecir Carvalho"
title = "Como executar várias versões do Powershell"
date = "2020-02-28 07:00:00"
publishDate = "2020-02-28 07:00:00"
type = "post"
draft = "false"
link = "yes"
url = "/como-executar-varias-versoes-do-powershell"
image = "/imagens/2020/02/windows-powershell.png"
description = ""
tags = [
    "blog",
    "dica",
    "powershell",
	"",
    "",
]
categories = ["Blog", "Dicas"]
+++


![image title](/imagens/2020/02/windows-powershell.png)

**Dica rápida** para quem precisa executar uma versão antiga do Powershell.

``powershell.exe -version x``

Você pode também executar o script com o comando `powershell.exe -version 4 .\script.ps1`

Hoje eu estava batendo a cabeça com um script em Powershell para um projetinho e descobri que um comando não existia mais na versão 6 do Powershell. Foi quando decidir tomar um rumo diferente e pesquisar se era possível executar uma versão mais antiga do Powershell e acabei encontrando esse {{< target-blank title="artigo" url="https://dxpetti.com/blog/2017/testing-your-powershell-code-in-different-versions-from-the-one-workstation/" >}} nas interwebs

