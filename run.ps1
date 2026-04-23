# Script PowerShell pour lancer l'application Bloc Notes

Write-Host "🚀 Lancement de l'application Bloc Notes..." -ForegroundColor Cyan
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

# Vérifier les appareils disponibles
Write-Host "📱 Appareils disponibles:" -ForegroundColor Green
flutter devices
Write-Host ""

# Lancer l'application
Write-Host "▶️  Lancement de l'application..." -ForegroundColor Green
Write-Host "💡 L'application va s'ouvrir automatiquement" -ForegroundColor Cyan
Write-Host "💡 Pour le web, l'URL sera affichée ci-dessous" -ForegroundColor Cyan
Write-Host ""

flutter run -d chrome

# Si chrome n'est pas disponible, lancer sur le premier appareil disponible
if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "⚠️  Chrome non disponible, tentative sur un autre appareil..." -ForegroundColor Yellow
    flutter run
}

Read-Host "Appuyez sur Entrée pour quitter"
