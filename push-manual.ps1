# Manual Push Script
Write-Host "=== Manual Push naar GitHub ===" -ForegroundColor Cyan
Write-Host ""

Set-Location "c:\Users\gebruiker\Documents\Prijstabel December 2025"

Write-Host "1. Git Status:" -ForegroundColor Yellow
git status
Write-Host ""

Write-Host "2. Remote URL:" -ForegroundColor Yellow
git remote -v
Write-Host ""

Write-Host "3. Laatste commits:" -ForegroundColor Yellow
git log --oneline -3
Write-Host ""

Write-Host "4. Bestanden toevoegen..." -ForegroundColor Yellow
git add .
Write-Host ""

Write-Host "5. Commit maken..." -ForegroundColor Yellow
git commit -m "Improve mobile spacing and scroll animations"
Write-Host ""

Write-Host "6. Pushen naar GitHub..." -ForegroundColor Yellow
git push origin main
Write-Host ""

Write-Host "=== Klaar! ===" -ForegroundColor Green
Write-Host "Controleer: https://github.com/bramvv301/bvportfolio2" -ForegroundColor Cyan
Write-Host ""
Write-Host "Druk op een toets om te sluiten..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
