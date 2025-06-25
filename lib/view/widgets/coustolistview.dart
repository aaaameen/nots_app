import 'package:flutter/cupertino.dart';
import 'package:note_app/view/widgets/customitem.dart';

class notelistview extends StatelessWidget {
  const notelistview({super.key});
  final data=const[

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemBuilder: (context, i) {
        return noteitem();
      },
    );
  }
}