// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:green_app/_mock_data/mock.dart';
import 'package:green_app/models/violence.dart';

class ViolenceSideActionBar extends StatelessWidget {
  const ViolenceSideActionBar({super.key, required this.violence});
  final double _iconSize = 40;
  final Violence violence;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () => {},
          icon: Icon(violence.isLiked ? Icons.local_fire_department: Icons.local_fire_department),
          iconSize: _iconSize,
          color:violence.isLiked ? Colors.red : Colors.white,
        ),
        Text(
          violence.totalLikes,
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
          violence.totalComments,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        IconButton(
          onPressed: () => {},
          icon: Icon(Icons.campaign),
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
      ],
    );
  }
}
