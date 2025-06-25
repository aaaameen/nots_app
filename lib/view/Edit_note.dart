import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/view/widgets/customappbar.dart';
import 'package:note_app/view/widgets/customtextfield.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          customappbar(title:'Edite Note' ,iconname:Icons.check,),
          SizedBox(height: 50),
          Customtextfield(title: 'Title',),
          SizedBox(height: 30),
          Customtextfield(title: 'Content',maxlint: 5,),


        ],
      ),
    );
  }
}
