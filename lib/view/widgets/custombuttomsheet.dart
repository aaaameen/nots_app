import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/view/widgets/custombutton.dart';
import 'package:note_app/view/widgets/customtextfield.dart';

class addnotebuttomsheet extends StatelessWidget {
  const addnotebuttomsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: addnoteform(),
      ),
    );
  }
}

class addnoteform extends StatefulWidget {
  const addnoteform({
    super.key,
  });

  @override
  State<addnoteform> createState() => _addnoteformState();
}

class _addnoteformState extends State<addnoteform> {

  final GlobalKey<FormState>formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Customtextfield(title: 'Title',onsave: (value){
            title=value;
          },),
          SizedBox(height: 30),
          Customtextfield(title: 'Content',maxlint: 5,onsave: (value){
            subtitle=value;
          },),
          SizedBox(height: 80),
          Custombutton(title: 'Add Note',onpress: (){
            if(formkey.currentState!.validate()){
              formkey.currentState!.save();
            }else{
              autovalidateMode=AutovalidateMode.always;
              setState(() {

              });
            }

          },),
        ],
      ),
    );
  }
}
