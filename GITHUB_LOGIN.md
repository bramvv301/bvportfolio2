# GitHub Inloggen - Stap voor Stap

## Methode 1: GitHub CLI (Eenvoudigst)

1. Open PowerShell in deze map
2. Voer uit: `gh auth login`
3. Volg de instructies op het scherm:
   - Kies "GitHub.com"
   - Kies "HTTPS" 
   - Kies "Login with a web browser"
   - Volg de link en autoriseer de applicatie

## Methode 2: Personal Access Token

### Stap 1: Maak een Token
1. Ga naar: https://github.com/settings/tokens
2. Klik op **"Generate new token"** → **"Generate new token (classic)"**
3. Geef het token een naam: `Prijstabel Project`
4. Selecteer de scope: **`repo`** (volledige controle over repositories)
5. Klik op **"Generate token"**
6. **KOPIEER HET TOKEN** (je ziet het maar één keer!)

### Stap 2: Gebruik het Token
Voer deze commando's uit in PowerShell (vervang `JE-TOKEN` met je gekopieerde token):

```powershell
git remote set-url origin https://JE-TOKEN@github.com/bramvv301/bvportfolio.git
git push -u origin main
```

Bij de username prompt, druk gewoon op Enter (het token is al in de URL).

## Methode 3: Automatisch (Git Credential Manager)

Als je Git Credential Manager hebt geïnstalleerd:
1. Voer gewoon uit: `git push -u origin main`
2. Er opent automatisch een browser venster om in te loggen
3. Autoriseer de applicatie

---

**Na het inloggen:** Je bestanden worden automatisch naar GitHub gepusht!
