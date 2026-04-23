enum SortOption {
  dateRecentFirst,
  dateOldFirst,
  titleAZ,
  titleZA,
}

extension SortOptionExtension on SortOption {
  String get label {
    switch (this) {
      case SortOption.dateRecentFirst:
        return 'Date (récent d\'abord)';
      case SortOption.dateOldFirst:
        return 'Date (ancien d\'abord)';
      case SortOption.titleAZ:
        return 'Titre (A → Z)';
      case SortOption.titleZA:
        return 'Titre (Z → A)';
    }
  }
}
