$serviceName = 'wuauserv'
$serviceInfo = Get-service -Name $serviceName
$serviceName
if ($serviceInfo.Status -eq "Running")
{
Write-Host $serviceName "Esta corriendo"
}
