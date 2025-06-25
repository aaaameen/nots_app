import 'package:flutter/material.dart';

class noteitem extends StatelessWidget {
  const noteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.only(left: 16, top: 24, bottom: 24),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'Flutter tips',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            subtitle: Text(
              'Build your color with ali thorow somy',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black, size: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: Text('May 21,2022', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
