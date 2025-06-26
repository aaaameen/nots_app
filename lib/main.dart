import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/addnotecubits/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/view/note_view.dart';

void main() async{
  await Hive.initFlutter();
Bloc.observer=Simpleblocobserver();
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox<Notemodel>(knotesbox);
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
