import 'package:flutter/material.dart';
import 'package:note_app/view/widgets/noteviewbody.dart';
class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:noteviewbody(),
      floatingActionButton: FloatingActionButton(onPressed: (){

        showModalBottomSheet(context: context, builder: (context){
          return addnotebuttomsheet();
        });
      },child: Icon(Icons.add),),
    );
  }
}


class addnotebuttomsheet extends StatelessWidget {
  const addnotebuttomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
              hintText: 'Title',
              hintStyle:TextStyle(color: Colors.cyanAccent)
            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(8)
                ),
                hintText: 'Content',
                hintStyle:TextStyle(color: Colors.cyanAccent)
            ),
          ),
          SizedBox(height: 50,),

          ElevatedButton(onPressed: (){}, child: Text('Add Note'),style: ElevatedButton.styleFrom(backgroundColor: Colors.cyanAccent,foregroundColor: Colors.black),)
        ],
      ),
    );
  }
}
