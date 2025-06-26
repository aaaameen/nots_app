import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubits/addnotecubits/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/view/widgets/custombutton.dart';
import 'package:note_app/view/widgets/customtextfield.dart';

class addnotebuttomsheet extends StatelessWidget {
  addnotebuttomsheet({super.key});

  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>addNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: BlocConsumer<addNoteCubit, addNoteState>(
            listener: (context, state) {
              if (state is addNoteloading) {
                isloading = true;
              } else if (state is addNotesuccess) {
                Navigator.pop(context);
                isloading = false;
              } else if (state is addNotefailure) {
                isloading=false;
                print('failed ${state.errmessage}');
              }
            },
            builder: (context, state) {
              return isloading?Center(child:CircularProgressIndicator()) : addnoteform();
            },
          ),
        ),
      ),
    );
  }
}

class addnoteform extends StatefulWidget {
  const addnoteform({super.key});

  @override
  State<addnoteform> createState() => _addnoteformState();
}

class _addnoteformState extends State<addnoteform> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Customtextfield(
            title: 'Title',
            onsave: (value) {
              title = value;
            },
          ),
          SizedBox(height: 30),
          Customtextfield(
            title: 'Content',
            maxlint: 5,
            onsave: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 80),
          Custombutton(
            title: 'Add Note',
            onpress: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var notemodel = Notemodel(
                  title: title!,
                  subtitle: subtitle!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value,
                );
                BlocProvider.of<addNoteCubit>(context).addnote(notemodel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
