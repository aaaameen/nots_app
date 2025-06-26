
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class NoteCubit extends Cubit<addNoteState> {
  NoteCubit() : super(addNoteInitial());

  addnote(Notemodel note)async{

    emit(addNoteloading());
   try{
     var notebox= Hive.box<Notemodel>(knotesbox);
     emit(addNotesuccess());
     await notebox.add(note);
   }catch(e){
     emit(addNotefailure(e.toString()));
   }
  }

}
