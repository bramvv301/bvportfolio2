# Push naar GitHub Script
Write-Host "=== GitHub Push Script ===" -ForegroundColor Cyan
Write-Host ""

# Ga naar de juiste directory
Set-Location "c:\Users\gebruiker\Documents\Prijstabel December 2025"

Write-Host "1. Controleren git status..." -ForegroundColor Yellow
git status
Write-Host ""

Write-Host "2. Alle bestanden toevoegen..." -ForegroundColor Yellow
git add .
Write-Host ""

Write-Host "3. Commit maken..." -ForegroundColor Yellow
git commit -m "Update: index.html voor Vercel deployment"
Write-Host ""

Write-Host "4. Remote instellen..." -ForegroundColor Yellow
git remote remove origin 2>$null
git remote add origin https://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@github.com/bramvv301/bvportfolio.git
Write-Host ""

Write-Host "5. Branch naar main..." -ForegroundColor Yellow
git branch -M main
Write-Host ""

Write-Host "6. Pushen naar GitHub..." -ForegroundColor Yellow
git push -u origin main
Write-Host ""

Write-Host "=== Klaar! ===" -ForegroundColor Green
Write-Host "Controleer: https://github.com/bramvv301/bvportfolio" -ForegroundColor Cyan
