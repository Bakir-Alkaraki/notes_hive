import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:noteshive/model/note_model.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:noteshive/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    try {
      Box<NoteModel> notesBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
