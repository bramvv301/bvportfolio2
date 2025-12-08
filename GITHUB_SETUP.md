# GitHub Setup Instructies

## Stap 1: Maak een nieuwe repository op GitHub

1. Ga naar https://github.com/new
2. Kies een repository naam (bijv. `prijstabel-december-2025`)
3. Kies of de repository **Public** of **Private** moet zijn
4. **NIET** de opties "Add a README file", "Add .gitignore", of "Choose a license" aanvinken (we hebben deze al lokaal)
5. Klik op **"Create repository"**

## Stap 2: Koppel je lokale repository aan GitHub

Na het aanmaken van de repository op GitHub, krijg je een URL. Gebruik deze URL in de volgende commando's:

### Voor HTTPS (aanbevolen):
```powershell
git remote add origin https://github.com/JOUW-GEBRUIKERSNAAM/JOUW-REPOSITORY-NAAM.git
git branch -M main
git push -u origin main
```

### Voor SSH (als je SSH keys hebt ingesteld):
```powershell
git remote add origin git@github.com:JOUW-GEBRUIKERSNAAM/JOUW-REPOSITORY-NAAM.git
git branch -M main
git push -u origin main
```

## Stap 3: Verificatie

Als je HTTPS gebruikt, wordt je mogelijk gevraagd om in te loggen. Volg de instructies op het scherm.

## Toekomstige updates

Na het instellen kun je wijzigingen pushen met:
```powershell
git add .
git commit -m "Beschrijving van je wijzigingen"
git push
```
