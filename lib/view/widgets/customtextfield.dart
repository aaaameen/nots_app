import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key,required this.title,this.maxlint=1});
final String title;
final int maxlint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        maxLines: maxlint,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            hintText: title,
            hintStyle:TextStyle(color: kprimarycolor)
        ),
      ),
    );
  }
}
