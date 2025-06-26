import 'package:flutter/material.dart';
import 'package:note_app/view/note_view.dart';

void main() {
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
