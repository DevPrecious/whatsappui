// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class CallLog extends StatelessWidget {
  final String image;
  final String name;
  final icon;
  final color;
  final String time;

  const CallLog(
      {Key? key,
      required this.image,
      required this.name,
      required this.color,
      required this.icon,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      minRadius: 35,
                      backgroundImage: NetworkImage(image),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            Icon(icon, color: color),
                            Text(
                              time,
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.call,
                  color: Colors.grey,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
