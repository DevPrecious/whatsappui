// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Lists extends StatelessWidget {
  final String image;
  final String name;
  final String message;
  final String date;

  const Lists(
      {Key? key,
      required this.image,
      required this.name,
      required this.message,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  minRadius: 30,
                  backgroundImage: NetworkImage(image),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(message),
                  ],
                ),
              ],
            ),
            Text(date),
          ],
        ),
      ),
    );
  }
}
