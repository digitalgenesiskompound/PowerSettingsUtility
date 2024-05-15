$highPerformancePlan = powercfg /list | Select-String -Pattern "High performance" | ForEach-Object { $_.ToString().Split()[3] }

powercfg /setactive $highPerformancePlan

$subGUID_USB = "2a737441-1930-4402-8d77-b2bebba308a3"

$settingGUID_USB_Suspend = "bfc365e1-14a5-4de8-84e7-f4c6f91d37d2"

powercfg /change $subGUID_USB $settingGUID_USB_Suspend 0
powercfg /change $subGUID_USB $settingGUID_USB_Suspend 0 /dc

Write-Output "Power plan set to 'High Performance' and 'USB Selective Suspend' disabled."
