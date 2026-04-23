# 🦁 Lancer l'Application sur Brave Browser

## Méthode 1 : Variable d'Environnement (Permanent)

### Étape 1 : Trouver le chemin de Brave
Le chemin typique de Brave sur Windows :
```
C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe
```

### Étape 2 : Configurer la variable d'environnement

**Option A : PowerShell (Session actuelle)**
```powershell
$env:CHROME_EXECUTABLE="C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
flutter run -d chrome
```

**Option B : Système (Permanent)**
1. Ouvrez les Paramètres Système
2. Recherchez "Variables d'environnement"
3. Ajoutez une nouvelle variable :
   - Nom : `CHROME_EXECUTABLE`
   - Valeur : `C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe`
4. Redémarrez le terminal
5. Lancez : `flutter run -d chrome`

---

## Méthode 2 : Script Automatique

Utilisez le script `run-brave.bat` qui configure automatiquement Brave.

```bash
run-brave.bat
```

---

## Méthode 3 : Commande Directe

```bash
set CHROME_EXECUTABLE=C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe
flutter run -d chrome --web-port=8080
```

---

## ⚠️ Note Importante

Flutter utilise l'ID `chrome` pour tous les navigateurs basés sur Chromium (Chrome, Brave, Edge, etc.).
Vous ne pouvez pas utiliser `-d brave`, mais `-d chrome` avec la variable `CHROME_EXECUTABLE`.

---

## 🌐 Accès

Après le lancement :
- **URL** : http://localhost:8080 (ou le port affiché)
- **Navigateur** : Brave (configuré via CHROME_EXECUTABLE)
