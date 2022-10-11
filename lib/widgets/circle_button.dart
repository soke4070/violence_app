import 'package:flutter/material.dart';

import '../views/screens_auth/add_video_screen.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../widgets/constants.dart';


class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;

  final Function onPressed;

  const CircleButton({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      // ignore: prefer_const_constructors

      child: IconButton(
        icon: Icon(icon),
        iconSize: iconSize,
        color: Colors.white,
        onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AddVideoScreen(),
                ),
      ),
      )
    );
  }
}
