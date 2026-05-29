# Clear the screen for a clean look
Clear-Host

Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "      OOBE CLOUD DEPLOYMENT INITIALIZED   " -ForegroundColor Green
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host ""

# 1. Test Network Connection
Write-Host "[*] Verifying internet access..." -ForegroundColor Yellow
$ping = Test-Connection -ComputerName 8.8.8.8 -Count 2 -Quiet
if ($ping) {
    Write-Host "[+] Internet connection: ONLINE" -ForegroundColor Green
    ping 8.8.8.8
} else {
    Write-Host "[-] Internet connection: OFFLINE. Check your network adapter." -ForegroundColor Red
}

Write-Host ""
# 2. Confirm Script Finished
Write-Host "[+] Cloud execution pipeline test successful!" -ForegroundColor Gold
Write-Host "=========================================" -ForegroundColor Cyan
