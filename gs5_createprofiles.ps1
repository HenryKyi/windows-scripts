# Clear the screen for a clean look
Clear-Host

Write-Host "=========================================" 
Write-Host "      OOBE CLOUD DEPLOYMENT INITIALIZED   "
Write-Host "========================================="
Write-Host ""

# 1. Test Network Connection
Write-Host "[*] Verifying internet access..." 
$ping = Test-Connection -ComputerName 8.8.8.8 -Count 2 -Quiet
if ($ping) {
    Write-Host "[+] Internet connection: ONLINE" 
    ping 8.8.8.8
} else {
    Write-Host "[-] Internet connection: OFFLINE. Check your network adapter." 
}

Write-Host ""
# 2. Confirm Script Finished
Write-Host "[+] Cloud execution pipeline test successful!"
Write-Host "=========================================" 
