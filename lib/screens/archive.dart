// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Archive extends StatelessWidget {
  const Archive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
      child: Row(
        children: [
          Icon(
            Icons.archive_outlined,
            color: Colors.grey,
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            'Archieved',
            style: TextStyle(color: Colors.grey, fontSize: 20),
          )
        ],
      ),
    );
  }
}
