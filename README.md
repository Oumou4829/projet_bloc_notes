# 📱 Application Bloc Notes Flutter

Application de gestion de notes développée avec Flutter, permettant de créer, modifier, supprimer et organiser vos notes avec une interface moderne et intuitive.

![Flutter](https://img.shields.io/badge/Flutter-3.41.6-blue)
![Dart](https://img.shields.io/badge/Dart-3.0+-blue)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 📋 Table des Matières

- [Fonctionnalités](#-fonctionnalités)
- [Captures d'écran](#-captures-décran)
- [Technologies](#-technologies)
- [Installation](#-installation)
- [Lancement](#-lancement)
- [Structure du Projet](#-structure-du-projet)
- [Fonctionnalités Détaillées](#-fonctionnalités-détaillées)
- [Scripts Disponibles](#-scripts-disponibles)
- [Contribution](#-contribution)
- [Auteur](#-auteur)

---

## ✨ Fonctionnalités

### Gestion des Notes
- ✅ **Créer** une note avec titre et contenu
- ✅ **Lire** toutes les notes dans une liste
- ✅ **Modifier** une note existante
- ✅ **Supprimer** une note avec confirmation

### Organisation
- 🎨 **Couleurs personnalisées** - 6 couleurs au choix pour chaque note
- 📅 **Dates automatiques** - Date de création et de modification
- 🔍 **Recherche en temps réel** - Recherche dans les titres et contenus
- 🔄 **Tri configurable** - 4 options de tri disponibles

### Interface
- 🎨 **Design moderne** - Interface Material Design 3
- 💙 **Thème bleu ciel** - Couleurs harmonieuses et apaisantes
- 📱 **Responsive** - Fonctionne sur mobile, web et desktop
- ⚡ **Hot Reload** - Développement rapide avec Flutter

---

## 📸 Captures d'écran

> *Ajoutez vos captures d'écran ici*

---

## 🛠️ Technologies

- **Framework** : Flutter 3.41.6
- **Langage** : Dart 3.0+
- **Gestion d'état** : Provider
- **Architecture** : MVVM (Model-View-ViewModel)
- **Plateformes** : Web, Windows, Android, iOS

---

## 📥 Installation

### Prérequis

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version 3.0 ou supérieure)
- [Git](https://git-scm.com/)
- Un éditeur de code (VS Code, Android Studio, etc.)

### Cloner le Projet

```bash
git clone https://github.com/Oumou4829/projet_bloc_notes.git
cd projet_bloc_notes
```

### Installer les Dépendances

```bash
flutter pub get
```

### Vérifier l'Installation

```bash
flutter doctor
```

---

## 🚀 Lancement

### Méthode 1 : Commande Simple

```bash
flutter run
```

### Méthode 2 : Chrome avec Port Fixe

```bash
# Windows
run-web.bat

# Linux/Mac
bash run-web.sh
```

**Accès** : http://localhost:8080

### Méthode 3 : Brave Browser

```bash
# Windows
run-brave.bat

# Linux/Mac
bash run-brave.sh
```

**Accès** : http://localhost:8080

### Méthode 4 : Plateforme Spécifique

```bash
# Web (Chrome)
flutter run -d chrome

# Web (Edge)
flutter run -d edge

# Windows Desktop
flutter run -d windows

# Voir les appareils disponibles
flutter devices
```

---

## 📁 Structure du Projet

```
bloc_notes/
├── lib/
│   ├── main.dart                    # Point d'entrée de l'application
│   ├── models/
│   │   ├── note.dart                # Modèle de données Note
│   │   └── sort_option.dart         # Enum des options de tri
│   ├── services/
│   │   └── note_service.dart        # Service de gestion des notes
│   ├── pages/
│   │   ├── home_page.dart           # Page d'accueil (liste des notes)
│   │   ├── create_page.dart         # Page de création/modification
│   │   └── detail_page.dart         # Page de détail d'une note
│   └── widgets/                     # Widgets réutilisables (si nécessaire)
├── pubspec.yaml                     # Dépendances du projet
├── README.md                        # Ce fichier
└── scripts/                         # Scripts de lancement
    ├── run-web.bat
    ├── run-brave.bat
    └── ...
```

---

## 🎯 Fonctionnalités Détaillées

### 1. Gestion des Notes

Chaque note contient :
- **Titre** (obligatoire, max 60 caractères)
- **Contenu** (optionnel, multi-lignes)
- **Couleur** (6 couleurs prédéfinies)
- **Date de création** (automatique)
- **Date de modification** (automatique si modifiée)

### 2. Système de Tri

4 options de tri disponibles :

| Option | Description |
|--------|-------------|
| **Date (récent d'abord)** | Tri par défaut - dernière note en haut |
| **Date (ancien d'abord)** | Retrouver les anciennes notes |
| **Titre (A → Z)** | Tri alphabétique croissant |
| **Titre (Z → A)** | Tri alphabétique décroissant |

**Utilisation** : Cliquez sur l'icône de tri (⋮) dans l'AppBar

### 3. Recherche

- Recherche en temps réel
- Recherche dans les titres ET les contenus
- Résultats filtrés instantanément
- Le tri s'applique aussi aux résultats de recherche

### 4. Couleurs Personnalisées

6 couleurs disponibles :
- 🟡 Jaune
- 🔴 Rouge
- 🟢 Vert
- 🔵 Bleu
- 🟣 Violet
- 🟠 Orange

---

## 📜 Scripts Disponibles

### Scripts avec Port Fixe (8080)

| Script | Plateforme | Description |
|--------|------------|-------------|
| `run-web.bat` | Windows | Lance sur Chrome (port 8080) |
| `run-web.sh` | Linux/Mac | Lance sur Chrome (port 8080) |
| `run-web.ps1` | PowerShell | Lance sur Chrome (port 8080) |
| `run-brave.bat` | Windows | Lance sur Brave (port 8080) |
| `run-brave.ps1` | PowerShell | Lance sur Brave (port 8080) |

### Scripts avec Détection Automatique

| Script | Plateforme | Description |
|--------|------------|-------------|
| `run.bat` | Windows | Détection automatique de l'appareil |
| `run.sh` | Linux/Mac | Détection automatique de l'appareil |
| `run.ps1` | PowerShell | Détection automatique de l'appareil |

---

## 🔥 Raccourcis Pendant l'Exécution

Pendant que l'application tourne :

| Touche | Action |
|--------|--------|
| `r` | Hot Reload (recharge rapide) |
| `R` | Hot Restart (redémarrage complet) |
| `q` | Quitter l'application |
| `h` | Afficher l'aide |

---

## 🧪 Tests

```bash
# Lancer les tests
flutter test

# Lancer les tests avec couverture
flutter test --coverage
```

---

## 📦 Build

### Web

```bash
flutter build web
```

Les fichiers seront dans `build/web/`

### Windows

```bash
flutter build windows
```

L'exécutable sera dans `build/windows/runner/Release/`

### Android

```bash
flutter build apk
```

L'APK sera dans `build/app/outputs/flutter-apk/`

---

## 🤝 Contribution

Les contributions sont les bienvenues ! Pour contribuer :

1. Forkez le projet
2. Créez une branche pour votre fonctionnalité (`git checkout -b feature/AmazingFeature`)
3. Committez vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Poussez vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrez une Pull Request

---

## 📝 Licence

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

---

## 👤 Auteur

**Oumou4829**

- GitHub: [@Oumou4829](https://github.com/Oumou4829)
- Projet: [projet_bloc_notes](https://github.com/Oumou4829/projet_bloc_notes)

---

## 🙏 Remerciements

- [Flutter](https://flutter.dev/) - Framework de développement
- [Provider](https://pub.dev/packages/provider) - Gestion d'état
- [Material Design](https://m3.material.io/) - Design system

---

## 📚 Documentation Supplémentaire

- [CHANGEMENTS.md](CHANGEMENTS.md) - Historique des changements de couleurs
- [FONCTIONNALITE_TRI.md](FONCTIONNALITE_TRI.md) - Documentation du système de tri
- [LANCER_BRAVE.md](LANCER_BRAVE.md) - Configuration pour Brave Browser
- [GUIDE_GITHUB.md](GUIDE_GITHUB.md) - Guide pour pousser sur GitHub

---

## 🐛 Signaler un Bug

Si vous trouvez un bug, veuillez ouvrir une [issue](https://github.com/Oumou4829/projet_bloc_notes/issues) avec :
- Une description claire du problème
- Les étapes pour reproduire le bug
- Le comportement attendu vs le comportement actuel
- Des captures d'écran si possible

---

## 💡 Demander une Fonctionnalité

Pour demander une nouvelle fonctionnalité, ouvrez une [issue](https://github.com/Oumou4829/projet_bloc_notes/issues) avec le tag `enhancement`.

---

## 📊 Statistiques du Projet

- **Langage principal** : Dart
- **Framework** : Flutter
- **Lignes de code** : ~1000+
- **Fichiers** : 20+
- **Dépendances** : 2 (provider, cupertino_icons)

---

**Fait avec Flutter**

## membres de groupe
- 24208
- 24197
- 24198
- 24209