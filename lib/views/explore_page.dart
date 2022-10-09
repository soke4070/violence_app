// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:violence_app/views/screen_sarf.dart';
import 'package:violence_app/views/screens_auth/search_screen.dart';


class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
          child: CustomScrollView(
        slivers: [Search2Screen()],
      )),
    );
  }
}
