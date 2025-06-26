import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({super.key,required this.title,this.maxlint=1, this.onsave});
final String title;
final int maxlint;
 final void Function(String?)? onsave;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        onSaved:onsave ,

        validator: (value){
          if(value!.isEmpty){
            return '$title required';
          }return null;
        },
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
