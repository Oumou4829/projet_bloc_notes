import 'package:flutter/material.dart';
import '../models/note.dart';
import '../models/sort_option.dart';

class NoteService extends ChangeNotifier {
  final List<Note> _notes = [];
  SortOption _currentSort = SortOption.dateRecentFirst;

  List<Note> get notes {
    final sorted = List<Note>.from(_notes);
    _applySorting(sorted);
    return List.unmodifiable(sorted);
  }

  SortOption get currentSort => _currentSort;

  int get count => _notes.length;

  void setSortOption(SortOption option) {
    _currentSort = option;
    notifyListeners();
  }

  void _applySorting(List<Note> list) {
    switch (_currentSort) {
      case SortOption.dateRecentFirst:
        list.sort((a, b) => b.dateCreation.compareTo(a.dateCreation));
        break;
      case SortOption.dateOldFirst:
        list.sort((a, b) => a.dateCreation.compareTo(b.dateCreation));
        break;
      case SortOption.titleAZ:
        list.sort((a, b) => a.titre.toLowerCase().compareTo(b.titre.toLowerCase()));
        break;
      case SortOption.titleZA:
        list.sort((a, b) => b.titre.toLowerCase().compareTo(a.titre.toLowerCase()));
        break;
    }
  }

  void addNote(Note note) {
    _notes.add(note);
    notifyListeners();
  }

  void updateNote(Note note) {
    final index = _notes.indexWhere((n) => n.id == note.id);
    if (index != -1) {
      _notes[index] = note;
      notifyListeners();
    }
  }

  void deleteNote(String id) {
    _notes.removeWhere((n) => n.id == id);
    notifyListeners();
  }

  Note? getNoteById(String id) {
    try {
      return _notes.firstWhere((n) => n.id == id);
    } catch (_) {
      return null;
    }
  }

  List<Note> search(String query) {
    if (query.trim().isEmpty) return notes;
    final q = query.toLowerCase();
    final filtered = _notes
        .where((n) =>
            n.titre.toLowerCase().contains(q) ||
            n.contenu.toLowerCase().contains(q))
        .toList();
    _applySorting(filtered);
    return filtered;
  }
}
