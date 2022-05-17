// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/status_list.dart';

class StatusBar extends StatelessWidget {
  final List<dynamic> data = [
    {
      'status': '🌝',
      'name': 'Precious 🙋',
      'when': 'Just now',
    },
    {
      'status': 'Precious 🙋',
      'name': 'Peace',
      'when': '2 min ago',
    },
    {
      'status': 'FF anyone?',
      'name': 'Marvelous',
      'when': '1 hr ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                DottedBorder(
                  dashPattern: [10, 10, 10, 10],
                  color: Colors.white,
                  strokeWidth: 2,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(20),
                  padding: EdgeInsets.all(2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Container(
                        padding: EdgeInsets.all(8),
                        height: 50,
                        width: 50,
                        color: Colors.green,
                        child: Text('Hello Developers')),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My status', style: TextStyle(fontSize: 18)),
                    Text('23 minutes ago',
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ]),
              Icon(Icons.more_horiz, color: Colors.grey),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Recent updates',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                child: StatusList(
                  status: data[index]['status'],
                  name: data[index]['name'],
                  when: data[index]['when'],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
