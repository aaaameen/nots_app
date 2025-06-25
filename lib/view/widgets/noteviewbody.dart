import 'package:flutter/material.dart';
import 'package:note_app/view/widgets/customappbar.dart';
import 'package:note_app/view/widgets/customitem.dart';

class noteviewbody extends StatelessWidget {
  const noteviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [customappbar(), noteitem()]);
  }
}


