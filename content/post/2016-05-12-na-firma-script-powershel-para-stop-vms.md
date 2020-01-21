---
author: Valdecir Carvalho
date: 2016-05-12 10:00:52+00:00
draft: false
title: Na FIRMA - Script Powershel para Stop de VMs
type: post
url: /na-firma-script-powershel-para-stop-vms/
categories:
- Blog
tags:
- Guest Stop-VM
- microsoft powershell
- PowerCli
- powershell
- script
- script para parar vms
- script to shutdown virtual machines
- shutdown
- Shutdown-VM
- vcenter
- vm shutdown
- vmware
- vmware powercli
---

Olá Homelabers!

Hoje vou falar sobre um script em Powershell que eu usei na FIRMA para fazer o shutdown de todas as VMs do meu ambiente. Tivemos que mudar fisicamente de lugar todos os servidores do ambiente e para isso, realizamos alguns "ensaios" para garantir que tudo sairia com o planejado no dia D. No primeiro ensaio, acabei por derrubar VM por VM via console do vSphere, mas isso não é uma coisa legal de se fazer quanto você tem mais de 100 VMs em Produção no seu ambiente.

Pesquisei um pouco nas internets da vida e encontrei um script bem parecido com o que eu queria. Fiz algumas modificações e reformas para se adequar ao meu ambiente e o resultado é o código que você encontra aqui embaixo.

![powercli](/imagens/2016/05/powercli.png)


<!-- more -->

Esse código basicamente, lê um arquivo TXT chamado VMLIST.TXT com uma lista de todas as VMs que eu queria derrubar. O script faz um loop pelo arquivo e vai logando em um arquivo texto o resultado de cada shutdown, junto com o tempo gasto na operação. Esse log, foi bastante útil para conseguir medir o tempo exato e planejar a janela de mudança, uma vez que bastava disparar o código, abrir um Redbull (essas coisas são sempre feitas na madrugada) e esperar.

Outra curiosidade do código, é que ele tenta derrumar a VM de uma forma "graciosa", com o comando "[Shutdown-VMGuest](https://www.vmware.com/support/developer/windowstoolkit/wintk40u1/html/Shutdown-VMGuest.html)" ou seja, dando o comando para o VMware Tools desligar o SO e depois fazer o halt da máquina. Caso não consiga, ele vai no modo bruto mesmo, com o comando "[Stop-VM](https://www.vmware.com/support/developer/PowerCLI/PowerCLI41U1/html/Stop-VM.html)" tipo um DEDOFF. E importante, se você derrubar um monte de VMs de uma vez, você pode ter problemas, por isso, o código espera 30 segundos entre cada VM.

O código está bastante fácil de ser modificado, caso seja necessário cobrir alguma particularidade do seu ambiente, mas pode ser utilizado AS-IS que vai funcionar.

[su_box title="ATENÇÃO" style="glass" box_color="#FF0000"]**NUNCA** execute um script que você encontraR na internet (nem aqui desse site super confiável) diretamente em seu ambiente de produção. Antes, faça um teste em homologação ou em laboratório.
E mais uma coisa, _eu não me responsabilizo_ por qualquer dano que por ventura esse código venha causar no seu ambiente OK?[/su_box]

Outro uso uso interessante para esse código é derrubar o seu LAB quando for necessário. Fácil, rápido e prático!

![production-we-are-trying](/imagens/2016/05/production-we-are-trying.jpg)


É isso ai galera! Vou ficando por aqui! Se você gostou desse post com script ou se esse script foi útil para você, deixe um comentário aqui no post.

VC

Ah(1), quase ia me esquecendo de comentar, que para executar esse script, você precisa ter o VMware PowerCLI instalado em seu computador ([link para a versão 6.3](https://my.vmware.com/group/vmware/get-download?downloadGroup=PCLI630R1))

Ahh(2), mais uma coisa que lembrei depois. A maneira mais fácil e rápida de de gerar o TXT com as suas VMs, é utilizando o [RVTools](http://homelaber.com.br/nova-versao-do-rvtools-acaba-de-ser-lancada/) conforme eu já comentei [aqui](http://homelaber.com.br/nova-versao-do-rvtools-acaba-de-ser-lancada/) e o Excel.

_Script: vm-shutdown.ps1 ([código disponibilizado no gist do Homelaber](https://gist.github.com/homelaber/362a74112244f1cbd99885f7ce4d7b17))_


    
    ##########################################################################################################
    #SCRIPT PARA SHUTDOWN DE VIRTUAL MACHINES NO VCENTER
    #
    #USO:
    #CRIAR UM ARQUIVO TXT NO FORMATO ABAIXO COM O NOME DE VMLIST.TXT
    #
    #name
    #VM01
    #VM01
    #VM03
    #
    #VERSÃO 1
    #FALTA MELHORAR A PARTE DE LOG E CATCH DE ERRO....
    #########################################################################################################
    clear
    #função que cria um arquivo de log 
    function LogMessage ([String[]] $messages)
    {
     
       $timestamp = $([DateTime]::Now).ToString()
     
       foreach ($message in $messages)
       {
          if ([string]::IsNullOrEmpty($message))
          {
             continue
          }
     
          Write-Host "$message"
     
          $message = $message.Replace("`r`n", " ")
          $message = $message.Replace("`n", " ")
          Add-Content $logFile "$timestamp $message"
       }
    }
    
    #POWER OFF
    Add-PSSnapin VMware.VimAutomation.Core  
    clear  
    $vcenter="COLOCAR O NOME DO SEU VCENTER SERVER AQUI" 
    $mycredentials = Get-Credential 
    $scriptDir = Split-Path $MyInvocation.MyCommand.Path
    $logfile = $scriptDir + "\log.txt" 
    $vmlistfile = $scriptDir + "\vmlist.txt"
    $waittime = 30
    
    LogMessage "Iniciando Shudown das VMs:" 
    Import-Csv $vmlistfile |  
    foreach {  
        $strNewVMName = $_.name
        Write-Host $strNewVMName
        }
    
    LogMessage "==========================================================================================="
    #Connect to vcenter server  
    LogMessage "Conectando no servidor Vcenter: $vcenter ..."
    
    $success = Connect-VIServer $vcenter -Credential $mycredentials -WarningAction:SilentlyContinue
    if ($success) { Write-Host "Conectado com sucesso ao servidor vCenter: $vcenter" -Foregroundcolor Green }
    else
    {
        Write-Host "Não foi possível conectar ao servidor cCenter: $vcenter" -Foregroundcolor Red
        LogMessage "Não foi possível conectar ao servidor cCenter: $vcenter"
        exit
    }
    Write-Host ""
      
    #Import vm name from csv file  
    LogMessage "Carregando arquivo de vms..."
    
    Import-Csv $vmlistfile |  
    foreach {  
        $strNewVMName = $_.name  
      
        #Generate a view for each vm to determine power state  
        $vm = Get-View -ViewType VirtualMachine -Filter @{"Name" = $strNewVMName}  
      
        #If vm is powered on then VMware Tools status is checked  
               if ($vm.Runtime.PowerState -ne "PoweredOff") {  
                   if ($vm.config.Tools.ToolsVersion -ne 0) { 
                    
                       LogMessage "Processando VM: ++ $strNewVMName ++ ..."
                       
                       #Commando de Shutdown...                 
                       Shutdown-VMGuest $strNewVMName -Confirm:$false
                       
                       LogMessage "Executando shutdown da VM ++ $strNewVMName ++ via VNMware Tools.Aguardando... (30s)"
                       
                       sleep 30
                       
                   }  
                   else {  
                        
                        LogMessage "Processando VM: ++ $strNewVMName ++ ..."
                       
                        #Commando de Shutdown...          
                        Stop-VM $strNewVMName -Confirm:$false 
    
                        LogMessage "Executando shutdown da VM: ++ $strNewVMName ++ via Force Stop.Aguardando... (30s)"
                        
                        sleep 30        
                      
                   }  
               }  
    }  
      
    
    #Disconnect vcenter server  
    LogMessage "Desconectando servidor Vcenter..."
    disconnect-viserver $vcenter -Confirm:$false
    sleep 5
    LogMessage "Servidor Vcenter Desconectado!"




