# 🚀 Guide pour Pousser sur GitHub

## ⚠️ Problème Actuel

Vous êtes connecté avec le compte GitHub **Ahmed24120**, mais vous essayez de pousser sur le dépôt de **Oumou4829**.

---

## 🔧 Solutions

### Solution 1 : Utiliser un Token d'Accès Personnel (Recommandé)

#### Étape 1 : Créer un Token sur GitHub

1. Allez sur GitHub : https://github.com
2. Connectez-vous avec le compte **Oumou4829**
3. Cliquez sur votre photo de profil → **Settings**
4. Dans le menu de gauche, cliquez sur **Developer settings**
5. Cliquez sur **Personal access tokens** → **Tokens (classic)**
6. Cliquez sur **Generate new token** → **Generate new token (classic)**
7. Donnez un nom au token : `projet_bloc_notes`
8. Cochez les permissions :
   - ✅ **repo** (toutes les sous-options)
9. Cliquez sur **Generate token**
10. **COPIEZ LE TOKEN** (vous ne pourrez plus le voir après)

#### Étape 2 : Utiliser le Token pour Pousser

```powershell
git remote set-url origin https://VOTRE_TOKEN@github.com/Oumou4829/projet_bloc_notes.git
git push -u origin main
```

Remplacez `VOTRE_TOKEN` par le token que vous avez copié.

---

### Solution 2 : Changer de Compte GitHub dans Git

#### Supprimer les Credentials Actuels

```powershell
git config --global --unset credential.helper
```

#### Configurer le Nouveau Compte

```powershell
git config --global user.name "Oumou4829"
git config --global user.email "votre_email@example.com"
```

#### Pousser (Git demandera vos identifiants)

```powershell
git push -u origin main
```

---

### Solution 3 : Utiliser SSH (Plus Sécurisé)

#### Étape 1 : Générer une Clé SSH

```powershell
ssh-keygen -t ed25519 -C "votre_email@example.com"
```

Appuyez sur Entrée pour accepter l'emplacement par défaut.

#### Étape 2 : Copier la Clé Publique

```powershell
cat ~/.ssh/id_ed25519.pub
```

Copiez le contenu affiché.

#### Étape 3 : Ajouter la Clé sur GitHub

1. Allez sur GitHub → Settings → SSH and GPG keys
2. Cliquez sur **New SSH key**
3. Collez la clé publique
4. Cliquez sur **Add SSH key**

#### Étape 4 : Changer l'URL du Remote

```powershell
git remote set-url origin git@github.com:Oumou4829/projet_bloc_notes.git
git push -u origin main
```

---

## 📋 Commandes Déjà Exécutées

✅ `git init` - Dépôt initialisé
✅ `git add .` - Fichiers ajoutés
✅ `git commit -m "..."` - Commit créé
✅ `git remote add origin ...` - Remote configuré
✅ `git branch -M main` - Branche renommée

---

## 🎯 Prochaine Étape

Choisissez une solution ci-dessus et exécutez les commandes correspondantes.

**Recommandation** : Utilisez la **Solution 1** (Token) car c'est la plus simple et rapide.

---

## ✅ Après le Push Réussi

Votre code sera disponible sur :
https://github.com/Oumou4829/projet_bloc_notes

Vous pourrez :
- Voir votre code en ligne
- Partager le lien
- Collaborer avec d'autres
- Cloner le projet sur d'autres machines

---

## 📞 Besoin d'Aide ?

Si vous rencontrez des problèmes :
1. Vérifiez que vous êtes connecté avec le bon compte GitHub
2. Vérifiez que le dépôt existe : https://github.com/Oumou4829/projet_bloc_notes
3. Vérifiez que vous avez les permissions d'écriture sur ce dépôt
