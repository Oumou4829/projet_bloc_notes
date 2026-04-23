# Script PowerShell pour lancer l'application Bloc Notes sur le Web

Write-Host "🚀 Lancement de l'application Bloc Notes sur le Web..." -ForegroundColor Cyan
Write-Host ""

# Vérifier si Flutter est installé
$flutterExists = Get-Command flutter -ErrorAction SilentlyContinue
if (-not $flutterExists) {
    Write-Host "❌ Flutter n'est pas installé ou n'est pas dans le PATH" -ForegroundColor Red
    Write-Host "Veuillez installer Flutter: https://docs.flutter.dev/get-started/install" -ForegroundColor Yellow
    Read-Host "Appuyez sur Entrée pour quitter"
    exit 1
}

# Installer les dépendances si nécessaire
if (-not (Test-Path ".dart_tool")) {
    Write-Host "📦 Installation des dépendances..." -ForegroundColor Yellow
    flutter pub get
    Write-Host ""
}

# Lancer l'application sur Chrome avec un port fixe
Write-Host "▶️  Lancement de l'application sur Chrome..." -ForegroundColor Green
Write-Host ""
Write-Host "╔════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║                                                        ║" -ForegroundColor Cyan
Write-Host "║  🌐 Application disponible sur :                       ║" -ForegroundColor Cyan
Write-Host "║                                                        ║" -ForegroundColor Cyan
Write-Host "║     http://localhost:8080                              ║" -ForegroundColor Green
Write-Host "║                                                        ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""
Write-Host "💡 L'application va s'ouvrir automatiquement dans Chrome" -ForegroundColor Yellow
Write-Host "💡 Appuyez sur 'r' pour recharger, 'q' pour quitter" -ForegroundColor Yellow
Write-Host ""

flutter run -d chrome --web-port=8080

Read-Host "Appuyez sur Entrée pour quitter"
