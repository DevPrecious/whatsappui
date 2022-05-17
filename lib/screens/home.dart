// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:whatsappui/List.dart';
import 'package:whatsappui/calls.dart';
import 'package:whatsappui/screens/archive.dart';
// import 'package:whatsappui/screens/camera_screen.dart';
import 'package:whatsappui/screens/status.dart';

class HomePage extends StatelessWidget {
  final List<dynamic> data = [
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Precious',
      'message': 'Haffa bro',
      'date': '11:00pm',
    },
    {
      'image': 'https://picsum.photos/300/300',
      'name': 'Oluwaprogramming',
      'message': 'Ok boss',
      'date': '9:00pm',
    },
    {
      'image': 'https://picsum.photos/4200/300',
      'name': 'Timlas',
      'message': 'Mad man haffa',
      'date': '10:00pm',
    },
    {
      'image': 'https://picsum.photos/5000/300',
      'name': 'Raheem',
      'message': 'COD Bro??',
      'date': '8:30pm',
    },
    {
      'image': 'https://picsum.photos/455/300',
      'name': 'Victor Emmanuel',
      'message': 'Big man haffa 🥶',
      'date': '9:30pm',
    },
  ];

  final List<dynamic> groupdata = [
    {
      'image': 'https://picsum.photos/200/300',
      'name': 'Groomlog Limited',
      'message': 'Oluwaprogramming: Ok na',
      'date': 'Yesterday',
    },
    {
      'image': 'https://picsum.photos/300/300',
      'name': 'RCCG CHM AREA HQ',
      'message': '+2348256: Thank you dear...',
      'date': 'Yesterday',
    },
    {
      'image': 'https://picsum.photos/4200/300',
      'name': 'Flutter Developers',
      'message': '+19256: I have a bug please',
      'date': 'Yesterday',
    },
    {
      'image': 'https://picsum.photos/5000/300',
      'name': 'NFT Group',
      'message': '+23467: Sapa dey oo',
      'date': 'Yesterday',
    },
    {
      'image': 'https://picsum.photos/455/300',
      'name': 'Coders',
      'message': '+9152722: Keep it up',
      'date': 'Yesterday',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('WhatsApp'),
                Row(
                  children: [
                    Icon(Icons.wifi),
                    SizedBox(width: 20),
                    Icon(Icons.sunny),
                    SizedBox(width: 20),
                    Icon(Icons.search),
                    SizedBox(width: 20),
                    Icon(Icons.more_vert)
                  ],
                ),
              ],
            ),
            bottom: TabBar(
              isScrollable: true,
              physics: BouncingScrollPhysics(),
              labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
              tabs: [
                Tab(icon: Icon(Icons.camera_enhance)),
                Tab(
                  child: Row(
                    children: [
                      Text(
                        'CHATS',
                        style: TextStyle(
                            color: Colors.green[700],
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: Center(
                          child: Text('72'),
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Text(
                        'GROUPS',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                        child: Center(
                          child: Text('99'),
                        ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Text(
                        'STATUS',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        // child: Center(
                        //   child: Text('99'),
                        // ),
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Text('CALLS'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Icon(Icons.camera_enhance),
              ),
              Column(
                children: [
                  Archive(),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Lists(
                          image: data[index]['image'],
                          name: data[index]['name'],
                          message: data[index]['message'],
                          date: data[index]['date']);
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  Archive(),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: groupdata.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Lists(
                          image: groupdata[index]['image'],
                          name: groupdata[index]['name'],
                          message: groupdata[index]['message'],
                          date: groupdata[index]['date']);
                    },
                  ),
                ],
              ),
              StatusBar(),
              Calls(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green[400],
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          )),
    );
  }
}
