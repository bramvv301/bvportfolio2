# GitHub Push Script
# Vervang JE-TOKEN hieronder met je Personal Access Token

$token = "JE-TOKEN"
$repo = "bramvv301/bvportfolio"

# Stel remote URL in met token
git remote set-url origin "https://${token}@github.com/${repo}.git"

# Push naar GitHub
git push -u origin main

Write-Host "Push voltooid!" -ForegroundColor Green
