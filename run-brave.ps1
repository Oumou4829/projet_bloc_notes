# Script PowerShell pour lancer l'application sur Brave

Write-Host "🦁 Lancement de l'application Bloc Notes sur Brave..." -ForegroundColor Cyan
Write-Host ""

# Vérifier si Flutter est installé
$flutterExists = Get-Command flutter -ErrorAction SilentlyContinue
if (-not $flutterExists) {
    Write-Host "❌ Flutter n'est pas installé ou n'est pas dans le PATH" -ForegroundColor Red
    Read-Host "Appuyez sur Entree pour quitter"
    exit 1
}

# Configurer Brave comme navigateur
Write-Host "🔧 Configuration de Brave..." -ForegroundColor Yellow
$env:CHROME_EXECUTABLE = "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"

# Vérifier si Brave existe
if (-not (Test-Path $env:CHROME_EXECUTABLE)) {
    Write-Host "❌ Brave n'est pas installe a l'emplacement par defaut" -ForegroundColor Red
    Write-Host ""
    Write-Host "Veuillez modifier le chemin dans le script run-brave.ps1" -ForegroundColor Yellow
    Write-Host "Ou installer Brave depuis : https://brave.com" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Appuyez sur Entree pour quitter"
    exit 1
}

# Installer les dépendances si nécessaire
if (-not (Test-Path ".dart_tool")) {
    Write-Host "📦 Installation des dependances..." -ForegroundColor Yellow
    flutter pub get
    Write-Host ""
}

# Lancer l'application sur Brave avec port fixe
Write-Host "▶️  Lancement de l'application sur Brave..." -ForegroundColor Green
Write-Host ""
Write-Host "╔════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║                                                        ║" -ForegroundColor Cyan
Write-Host "║  🌐 Application disponible sur :                       ║" -ForegroundColor Cyan
Write-Host "║                                                        ║" -ForegroundColor Cyan
Write-Host "║     http://localhost:8080                              ║" -ForegroundColor Green
Write-Host "║                                                        ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""
Write-Host "💡 L'application va s'ouvrir dans Brave" -ForegroundColor Yellow
Write-Host "💡 Appuyez sur 'r' pour recharger, 'q' pour quitter" -ForegroundColor Yellow
Write-Host ""

flutter run -d chrome --web-port=8080

Read-Host "Appuyez sur Entree pour quitter"
