part of 'add_note_cubit.dart';

@immutable
sealed class addNoteState {}

final class addNoteInitial extends addNoteState {}

final class addNoteloading extends addNoteState {}

final class addNotesuccess extends addNoteState {}
final class addNotefailure extends addNoteState {
  final String errmessage;
  addNotefailure(this.errmessage);
}
