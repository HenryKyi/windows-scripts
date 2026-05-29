# Clear the screen for a clean look
Clear-Host

New-LocalUser -Name "GS5 Training" -NoPassword
Add-LocalGroupMember -Group "Users" -Member "GS5 Training" -ErrorAction SilentlyContinue

$adminPwd = ConvertTo-SecureString "sUDHccPPmQGiZGxUEc6m" -AsPlainText -Force
New-LocalUser -Name "gs5admin" -Password $adminPwd
Add-LocalGroupMember -Group "Administrators" -Member "gs5admin"

$sysAdminPwd = ConvertTo-SecureString "P@ssw0rd11545" -AsPlainText -Force
Set-LocalUser -Name "Administrator" -Password $sysAdminPwd
Enable-LocalUser -Name "Administrator"

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OOBE" /v BypassNRO /t REG_DWORD /d 1 /f
shutdown /r /t 0
