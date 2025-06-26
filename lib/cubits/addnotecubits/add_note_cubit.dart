
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class NoteCubit extends Cubit<addNoteState> {
  NoteCubit() : super(addNoteInitial());

  addnote(Notemodel note){

  }

}
