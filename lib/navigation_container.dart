// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:violence_app/views/explore_page.dart';
import 'package:violence_app/views/notification_page.dart';
import 'package:violence_app/views/profile_page.dart';
import 'package:violence_app/views/upload_page.dart';
import 'package:violence_app/views/violence_page.dart';

import 'package:violence_app/widgets/custom_bottom_nav_bar.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({super.key});

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedPageIndex = 0;
  // ignore: prefer_final_fields
  static  List<Widget> _appPages = [
    ViolencePage(),
    ExplorePage(),
    UploadPage(),
    NotificationPage(),
    ProfilePage(),
  ];
  void _onIconTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _appPages[_selectedPageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedPageIndex: _selectedPageIndex,
        onIconTap: _onIconTapped,
      ),
    );
  }
}
