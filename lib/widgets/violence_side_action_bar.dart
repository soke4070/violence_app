// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ViolenceSideActionBar extends StatelessWidget {
  const ViolenceSideActionBar({super.key, required violence});
  final double _iconSize = 35;

  @override
  Widget build(BuildContext context) {
    var currentUser;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.local_fire_department),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        Text(
          "2.50k",
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            
          ),
        ),
        SizedBox(height: 10),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.directions_run),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        Text(
          '1.6k',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.send_outlined),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.more_horiz),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        SizedBox(height: 10),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(currentUser.profileImageUrl))),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
