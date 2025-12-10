# Veilige push naar bvportfolio2 (zonder token in URL)
Write-Host "=== Veilige Push naar bvportfolio2 ===" -ForegroundColor Cyan
Write-Host ""

Set-Location "c:\Users\gebruiker\Documents\Prijstabel December 2025"

# Remote URL zonder token
Write-Host "1. Remote instellen (zonder token in URL)..." -ForegroundColor Yellow
git remote set-url origin https://github.com/bramvv301/bvportfolio2.git
git remote -v
Write-Host ""

# Git configureren voor credentials
Write-Host "2. Git credentials configureren..." -ForegroundColor Yellow
$token = "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"
git config credential.helper store
Write-Host "https://bramvv301:$token@github.com" | git credential approve
Write-Host ""

# Bestanden toevoegen
Write-Host "3. Bestanden toevoegen..." -ForegroundColor Yellow
git add .
Write-Host ""

# Commit maken
Write-Host "4. Commit maken..." -ForegroundColor Yellow
git commit -m "Update: index.html voor Vercel deployment" --allow-empty
Write-Host ""

# Push
Write-Host "5. Pushen naar bvportfolio2..." -ForegroundColor Yellow
git push -u origin main
Write-Host ""

Write-Host "=== Klaar! ===" -ForegroundColor Green
Write-Host "Controleer: https://github.com/bramvv301/bvportfolio2" -ForegroundColor Cyan
