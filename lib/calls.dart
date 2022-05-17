// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:whatsappui/screens/call_log.dart';

class Calls extends StatelessWidget {
  final List<dynamic> data = [
    {
      'image': '',
      'name': 'Victor',
      'color': Colors.red,
      'icon': Icons.arrow_downward,
      'time': 'Yesterday, 6:43pm',
    },
    {
      'image': '',
      'name': 'Emma',
      'color': Colors.green,
      'icon': Icons.arrow_upward,
      'time': 'Yesterday, 8:00pm',
    },
    {
      'image': '',
      'name': 'Isaac',
      'color': Colors.red,
      'icon': Icons.arrow_downward,
      'time': 'Yesterday, 9:43pm',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return CallLog(
            image: data[index]['image'],
            name: data[index]['name'],
            color: data[index]['color'],
            icon: data[index]['icon'],
            time: data[index]['time']);
      },
    );
  }
}
