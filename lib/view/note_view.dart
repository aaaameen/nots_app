import 'package:flutter/material.dart';
import 'package:note_app/view/note_view.dart';
import 'package:note_app/view/widgets/custombuttomsheet.dart';
import 'package:note_app/view/widgets/noteviewbody.dart';
class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:noteviewbody(),
      floatingActionButton: FloatingActionButton( onPressed: (){

        showModalBottomSheet(context: context, builder: (context){
          return addnotebuttomsheet();
        });
      },child: Icon(Icons.add)),
    );
  }
}



