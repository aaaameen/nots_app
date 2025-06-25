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
        child: Column(
          children: [
            Customtextfield(title: 'Title',),
            SizedBox(height: 30),
            Customtextfield(title: 'Content',maxlint: 5,),
            SizedBox(height: 80),
            Custombutton(title: 'Add Note',),
          ],
        ),
      ),
    );
  }
}
