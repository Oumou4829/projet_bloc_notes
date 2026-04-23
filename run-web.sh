#!/bin/bash

echo "🚀 Lancement de l'application Bloc Notes sur le Web..."
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

# Lancer l'application sur Chrome avec un port fixe
echo "▶️  Lancement de l'application sur Chrome..."
echo ""
echo "╔════════════════════════════════════════════════════════╗"
echo "║                                                        ║"
echo "║  🌐 Application disponible sur :                       ║"
echo "║                                                        ║"
echo "║     http://localhost:8080                              ║"
echo "║                                                        ║"
echo "╚════════════════════════════════════════════════════════╝"
echo ""
echo "💡 L'application va s'ouvrir automatiquement dans Chrome"
echo "💡 Appuyez sur 'r' pour recharger, 'q' pour quitter"
echo ""

flutter run -d chrome --web-port=8080
