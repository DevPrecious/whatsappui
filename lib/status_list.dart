// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class StatusList extends StatelessWidget {
  final String status;
  final String name;
  final String when;

  const StatusList(
      {Key? key, required this.status, required this.name, required this.when})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        DottedBorder(
          dashPattern: [6, 6, 6, 6],
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
                color: Colors.blue,
                child: Center(child: Text(status))),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            name,
            style: TextStyle(fontSize: 17),
          ),
          Text(
            when,
            style: TextStyle(color: Colors.grey),
          ),
        ]),
      ]),
    );
  }
}
