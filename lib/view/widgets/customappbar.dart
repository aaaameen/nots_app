import 'package:flutter/material.dart';
import 'package:note_app/view/widgets/costomsearchicon.dart';

class customappbar extends StatelessWidget {
  const customappbar({super.key,required this.title ,required this.iconname});
   final String title;
final IconData iconname;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 25)),
          cutomsearchicon(iconname: iconname,),
        ],
      ),
    );
  }
}
