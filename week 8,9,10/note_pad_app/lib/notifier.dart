
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note_pad_app/model.dart';

class Notifierx extends StateNotifier<List<Notes>> {
  Notifierx() : super([]);

  void addNote(Notes note) {
    state = [...state, note];
  }
  void removeNote(Notes note) {
    state = state.where((_note) => _note != note).toList();
  }


}