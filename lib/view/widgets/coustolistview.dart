import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/view/Edit_note.dart';
import 'package:note_app/view/widgets/customitem.dart';

class notelistview extends StatelessWidget {
  const notelistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemBuilder: (context, i) {
        return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return EditNote();
              }));
            },
            child: noteitem());
      },
    );
  }
}