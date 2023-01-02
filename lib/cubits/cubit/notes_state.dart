part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> list;

  NotesSuccess(this.list);
}

class NotesFailure extends NotesState {
  final String errMsg;

  NotesFailure(this.errMsg);
}
