@echo off
chcp 65001 >nul
echo 🦁 Lancement de l'application Bloc Notes sur Brave...
echo.

REM Vérifier si Flutter est installé
where flutter >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Flutter n'est pas installé ou n'est pas dans le PATH
    pause
    exit /b 1
)

REM Configurer Brave comme navigateur
echo 🔧 Configuration de Brave...
set CHROME_EXECUTABLE=C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe

REM Vérifier si Brave existe
if not exist "%CHROME_EXECUTABLE%" (
    echo ❌ Brave n'est pas installé à l'emplacement par défaut
    echo.
    echo Veuillez modifier le chemin dans le script run-brave.bat
    echo Ou installer Brave depuis : https://brave.com
    echo.
    pause
    exit /b 1
)

REM Installer les dépendances si nécessaire
if not exist ".dart_tool" (
    echo 📦 Installation des dépendances...
    call flutter pub get
    echo.
)

REM Lancer l'application sur Brave avec port fixe
echo ▶️  Lancement de l'application sur Brave...
echo.
echo ╔════════════════════════════════════════════════════════╗
echo ║                                                        ║
echo ║  🌐 Application disponible sur :                       ║
echo ║                                                        ║
echo ║     http://localhost:8080                              ║
echo ║                                                        ║
echo ╚════════════════════════════════════════════════════════╝
echo.
echo 💡 L'application va s'ouvrir dans Brave
echo 💡 Appuyez sur 'r' pour recharger, 'q' pour quitter
echo.

call flutter run -d chrome --web-port=8080

pause
