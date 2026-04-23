# Fonctionnalité de Tri des Notes

## Options de Tri Disponibles

| Option | Comportement |
|--------|--------------|
| **Par date (récent d'abord)** | Tri par défaut - dernière note créée en haut |
| **Par date (ancien d'abord)** | Option pour retrouver les vieilles notes |
| **Par titre (A → Z)** | Tri alphabétique croissant sur le titre |
| **Par titre (Z → A)** | Tri alphabétique décroissant sur le titre |

## Utilisation

1. Appuyez sur l'icône de tri (⋮) dans l'AppBar
2. Sélectionnez l'option de tri souhaitée
3. Les notes sont automatiquement réorganisées

## Fichiers Modifiés

### Nouveaux Fichiers
- `lib/models/sort_option.dart` - Enum des options de tri

### Fichiers Modifiés
- `lib/services/note_service.dart` - Logique de tri
- `lib/pages/home_page.dart` - Interface de sélection du tri

## Implémentation Technique

### NoteService
- Propriété `currentSort` pour stocker l'option actuelle
- Méthode `setSortOption()` pour changer le tri
- Méthode `_applySorting()` pour appliquer le tri
- Le tri s'applique automatiquement à `notes` et `search()`

### HomePage
- Bouton de tri dans l'AppBar
- Modal bottom sheet pour sélectionner l'option
- Indicateur visuel de l'option sélectionnée

## Comportement

- Le tri par défaut est "Date (récent d'abord)"
- Le tri s'applique à toutes les notes
- Le tri s'applique aussi aux résultats de recherche
- Le tri persiste pendant la session (réinitialisé au redémarrage)
