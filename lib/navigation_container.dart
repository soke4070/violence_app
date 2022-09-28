import 'package:flutter/material.dart';
import 'package:green_app/pages/explore_page.dart';
import 'package:green_app/pages/notification_page.dart';
import 'package:green_app/pages/profile_page.dart';
import 'package:green_app/pages/peace_page.dart';
import 'package:green_app/pages/violence_page.dart';
import 'package:green_app/widgets/custom_bottom_nav_bar.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({super.key});

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedPageIndex = 0;
  static const List<Widget> _appPages = [
    PeacePage(),
    ViolencePage(),
    ExplorePage(),
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
        
        selectedPageIndex: _selectedPageIndex, onIconTap: _onIconTapped, 
      ),
    );
  }
}
