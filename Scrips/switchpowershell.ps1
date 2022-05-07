$serviceName = Read-Host -Prompt 'Ingresa el nombre del servicio'
$opc = Read-Host -Prompt 'Que deseas hacer? [1] Ver status [2] Iniciar [3] Detener'
switch ($opc){
1{
Get-Service -Name $serviceName
break
} 2 {
Start-Service -Name $serviceName
break
} 3 {
Stop-Service -Name $serviceName 
break
} default {
Write-Host "Opcion no valida"
}
}