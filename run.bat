@echo off
echo 🚀 Lancement de l'application Bloc Notes...
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

REM Vérifier les appareils disponibles
echo 📱 Appareils disponibles:
call flutter devices
echo.

REM Lancer l'application
echo ▶️  Lancement de l'application...
echo 💡 L'application va s'ouvrir automatiquement
echo 💡 Pour le web, l'URL sera affichée ci-dessous
echo.

call flutter run -d chrome

REM Si chrome n'est pas disponible, lancer sur le premier appareil disponible
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ⚠️  Chrome non disponible, tentative sur un autre appareil...
    call flutter run
)

pause
