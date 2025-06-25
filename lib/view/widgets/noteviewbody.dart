import 'package:flutter/material.dart';
import 'package:note_app/view/widgets/customappbar.dart';
import 'package:note_app/view/widgets/customitem.dart';

class noteviewbody extends StatelessWidget {
  const noteviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [customappbar(), Expanded(child: notelistview())]);
  }
}

class notelistview extends StatelessWidget {
  const notelistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, i) {
        return noteitem();
      },
    );
  }
}
