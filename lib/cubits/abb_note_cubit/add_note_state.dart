part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSccess extends AddNoteState {}

class AddNoteFailuer extends AddNoteState {
  final String errMessage;

  AddNoteFailuer(this.errMessage);

}
