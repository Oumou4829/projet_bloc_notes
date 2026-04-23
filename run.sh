#!/bin/bash

echo "🚀 Lancement de l'application Bloc Notes..."
echo ""

# Vérifier si Flutter est installé
if ! command -v flutter &> /dev/null
then
    echo "❌ Flutter n'est pas installé ou n'est pas dans le PATH"
    echo "Veuillez installer Flutter: https://docs.flutter.dev/get-started/install"
    exit 1
fi

# Installer les dépendances si nécessaire
if [ ! -d ".dart_tool" ]; then
    echo "📦 Installation des dépendances..."
    flutter pub get
    echo ""
fi

# Vérifier les appareils disponibles
echo "📱 Appareils disponibles:"
flutter devices
echo ""

# Lancer l'application
echo "▶️  Lancement de l'application..."
echo "💡 L'application va s'ouvrir automatiquement"
echo "💡 Pour le web, l'URL sera affichée ci-dessous"
echo ""

flutter run -d chrome

# Si chrome n'est pas disponible, lancer sur le premier appareil disponible
if [ $? -ne 0 ]; then
    echo ""
    echo "⚠️  Chrome non disponible, tentative sur un autre appareil..."
    flutter run
fi
