// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      pinned: true,
      brightness: Brightness.light,
      centerTitle: false,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.local_fire_department, 
              size: 18,
              color: Colors.red,
            ),
          ),
          Text(
            "comradevawulence",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            )),
      ],
    );
  }
}
