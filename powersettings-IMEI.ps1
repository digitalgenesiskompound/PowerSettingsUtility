$powerManagement = Get-CimInstance -ClassName MSPower_DeviceEnable -Namespace root/WMI

$imeDevices = Get-CimInstance -ClassName Win32_PnPEntity -Filter "Name LIKE 'Intel(R) Management Engine Interface%'"

$imeDevices | ForEach-Object {
    $powerManagement | Where-Object InstanceName -Like ('*{0}*' -f $_.PNPDeviceID)
} | Set-CimInstance -Property @{ Enable = $false }

Write-Output "Power settings for Intel Management Engine Interface have been disabled."
