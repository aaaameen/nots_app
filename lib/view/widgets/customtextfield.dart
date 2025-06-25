import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class Customtextfield extends StatelessWidget {
   Customtextfield({super.key,required this.title,this.maxlint=1});
String title;
int maxlint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlint,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
          ),
          hintText: title,
          hintStyle:TextStyle(color: kprimarycolor)
      ),
    );
  }
}
