$powerManagement = Get-CimInstance -ClassName MSPower_DeviceEnable -Namespace root/WMI

$usbDevices = Get-CimInstance -ClassName Win32_PnPEntity -Filter "PNPClass = 'USB'"

$usbDevices | ForEach-Object {
    $powerManagement | Where-Object InstanceName -Like ('*{0}*' -f $_.PNPDeviceID)
} | Set-CimInstance -Property @{ Enable = $false }

Write-Output "Power settings for USB devices have been disabled."
