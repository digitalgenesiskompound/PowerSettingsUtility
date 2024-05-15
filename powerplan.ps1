if (!([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Write-Output "Please run this script as an administrator."
    exit
}

$highPerformancePlan = powercfg /list | Select-String -Pattern "High performance" | ForEach-Object { $_.ToString().Split()[3] }

powercfg.exe /setactive $highPerformancePlan

# Define the correct GUIDs for the USB settings
$subGUID_USB = "2a737441-1930-4402-8d77-b2bebba308a3"
$settingGUID_USB_Suspend = "48e6b7a6-50f5-4782-a5d4-53bb8f07e226"

powercfg.exe /setacvalueindex $highPerformancePlan $subGUID_USB $settingGUID_USB_Suspend 0
powercfg.exe /setdcvalueindex $highPerformancePlan $subGUID_USB $settingGUID_USB_Suspend 0
powercfg.exe /S $highPerformancePlan

Write-Output "Power plan set to 'High Performance' and 'USB Selective Suspend' disabled."
