import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/view/widgets/customtextfield.dart';

class addnotebuttomsheet extends StatelessWidget {
  const addnotebuttomsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Customtextfield(title: 'Title',),
          SizedBox(height: 20),
          Customtextfield(title: 'Content',maxlint: 5,),
          SizedBox(height: 80),
          ElevatedButton(
            onPressed: () {},
            child: Text('Add Note'),
            style: ElevatedButton.styleFrom(
              backgroundColor: kprimarycolor,
              foregroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
