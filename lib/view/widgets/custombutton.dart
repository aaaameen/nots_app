import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

class Custombutton extends StatelessWidget {
 const Custombutton({super.key,required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width:MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        style: ElevatedButton.styleFrom(
          backgroundColor: kprimarycolor,
          foregroundColor: Colors.black,
        ),
      ),
    );
  }
}
