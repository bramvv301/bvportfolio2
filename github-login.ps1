# GitHub Login Helper Script
Write-Host "=== GitHub Authenticatie ===" -ForegroundColor Cyan
Write-Host ""

# Optie 1: GitHub CLI
Write-Host "Optie 1: GitHub CLI (aanbevolen)" -ForegroundColor Yellow
Write-Host "Voer uit: gh auth login" -ForegroundColor Gray
Write-Host ""

# Optie 2: Personal Access Token
Write-Host "Optie 2: Personal Access Token" -ForegroundColor Yellow
Write-Host "1. Ga naar: https://github.com/settings/tokens" -ForegroundColor Gray
Write-Host "2. Klik op 'Generate new token' -> 'Generate new token (classic)'" -ForegroundColor Gray
Write-Host "3. Geef het token een naam (bijv. 'Prijstabel Project')" -ForegroundColor Gray
Write-Host "4. Selecteer scope: 'repo' (volledige controle over repositories)" -ForegroundColor Gray
Write-Host "5. Klik op 'Generate token'" -ForegroundColor Gray
Write-Host "6. Kopieer het token (je ziet het maar één keer!)" -ForegroundColor Gray
Write-Host ""
Write-Host "Daarna voer je uit:" -ForegroundColor Cyan
Write-Host "  git remote set-url origin https://JE-TOKEN@github.com/bramvv301/bvportfolio.git" -ForegroundColor Green
Write-Host "  git push -u origin main" -ForegroundColor Green
Write-Host ""

# Optie 3: Git Credential Manager
Write-Host "Optie 3: Git Credential Manager (automatisch)" -ForegroundColor Yellow
Write-Host "Als je Git Credential Manager hebt, wordt je automatisch gevraagd om in te loggen" -ForegroundColor Gray
Write-Host "bij de eerste push. Probeer gewoon: git push -u origin main" -ForegroundColor Gray
Write-Host ""

# Start GitHub CLI login als het beschikbaar is
$ghAvailable = Get-Command gh -ErrorAction SilentlyContinue
if ($ghAvailable) {
    Write-Host "GitHub CLI is geïnstalleerd. Start login proces..." -ForegroundColor Green
    Write-Host ""
    gh auth login
} else {
    Write-Host "GitHub CLI is niet geïnstalleerd." -ForegroundColor Yellow
    Write-Host "Download het hier: https://cli.github.com/" -ForegroundColor Gray
    Write-Host ""
}

Write-Host "Druk op een toets om door te gaan..." -ForegroundColor Cyan
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
