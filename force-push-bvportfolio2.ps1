# Force push naar bvportfolio2
Write-Host "=== Force Push naar bvportfolio2 ===" -ForegroundColor Cyan
Write-Host ""

Set-Location "c:\Users\gebruiker\Documents\Prijstabel December 2025"

Write-Host "1. Remote verwijderen en opnieuw toevoegen..." -ForegroundColor Yellow
git remote remove origin 2>&1 | Write-Host
git remote add origin https://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@github.com/bramvv301/bvportfolio2.git 2>&1 | Write-Host
Write-Host ""

Write-Host "2. Remote controleren..." -ForegroundColor Yellow
git remote -v 2>&1 | Write-Host
Write-Host ""

Write-Host "3. Alle bestanden toevoegen..." -ForegroundColor Yellow
git add . 2>&1 | Write-Host
Write-Host ""

Write-Host "4. Commit maken..." -ForegroundColor Yellow
git commit -m "Update: index.html voor Vercel deployment" 2>&1 | Write-Host
Write-Host ""

Write-Host "5. Branch naar main..." -ForegroundColor Yellow
git branch -M main 2>&1 | Write-Host
Write-Host ""

Write-Host "6. Force push naar bvportfolio2..." -ForegroundColor Yellow
git push -f -u origin main 2>&1 | Write-Host
Write-Host ""

Write-Host "7. Controleren remote branches..." -ForegroundColor Yellow
git ls-remote --heads origin 2>&1 | Write-Host
Write-Host ""

Write-Host "=== Klaar! ===" -ForegroundColor Green
Write-Host "Controleer: https://github.com/bramvv301/bvportfolio2" -ForegroundColor Cyan
Write-Host "Druk op een toets om te sluiten..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
