import 'package:flutter/material.dart';
import 'package:note_app/view/widgets/coustolistview.dart';
import 'package:note_app/view/widgets/customappbar.dart';

class noteviewbody extends StatelessWidget {
  const noteviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [customappbar(title: 'Note',iconname: Icons.search,), Expanded(child: notelistview())]);
  }
}


