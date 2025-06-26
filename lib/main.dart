import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/view/note_view.dart';

void main() async{
  await Hive.initFlutter();

  await Hive.openBox(knotesbox);
  runApp(const Noteapp());
}

class Noteapp extends StatelessWidget {
  const Noteapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
      brightness: Brightness.dark,
    ), home: NoteView());
  }
}
