import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:noteshive/model/note_model.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:noteshive/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() {
    Box<NoteModel> notesBox = Hive.box<NoteModel>(kNoteBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
