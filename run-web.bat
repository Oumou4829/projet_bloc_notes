@echo off
echo 🚀 Lancement de l'application Bloc Notes sur le Web...
echo.

REM Vérifier si Flutter est installé
where flutter >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Flutter n'est pas installé ou n'est pas dans le PATH
    echo Veuillez installer Flutter: https://docs.flutter.dev/get-started/install
    pause
    exit /b 1
)

REM Installer les dépendances si nécessaire
if not exist ".dart_tool" (
    echo 📦 Installation des dépendances...
    call flutter pub get
    echo.
)

REM Lancer l'application sur Chrome avec un port fixe
echo ▶️  Lancement de l'application sur Chrome...
echo.
echo ╔════════════════════════════════════════════════════════╗
echo ║                                                        ║
echo ║  🌐 Application disponible sur :                       ║
echo ║                                                        ║
echo ║     http://localhost:8080                              ║
echo ║                                                        ║
echo ╚════════════════════════════════════════════════════════╝
echo.
echo 💡 L'application va s'ouvrir automatiquement dans Chrome
echo 💡 Appuyez sur 'r' pour recharger, 'q' pour quitter
echo.

call flutter run -d chrome --web-port=8080

pause
