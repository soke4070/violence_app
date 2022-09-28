// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../_mock_data/mock.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.selectedPageIndex, required this.onIconTap});
  final int selectedPageIndex;
  final Function onIconTap;
  final double _iconSize = 35;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: selectedPageIndex == 5 ? Colors.white : Colors.black,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () => {onIconTap(0)},
                iconSize: _iconSize,
                color: selectedPageIndex == 2 ? Colors.white : Colors.black,
                icon: Icon(
                  selectedPageIndex == 0
                      ? Icons.local_fire_department
                      : Icons.local_fire_department_outlined,
                  color: Colors.red,
                )),
            IconButton(
                onPressed: () => {onIconTap(1)},
                iconSize: _iconSize,
                color: selectedPageIndex == 2 ? Colors.white : Colors.black,
                icon: Icon(selectedPageIndex == 1
                    ? Icons.search
                    : Icons.search_outlined,
                    color: Colors.white,)),
            IconButton(
                onPressed: () => {onIconTap(2)},
                iconSize: _iconSize,
                color: selectedPageIndex == 2 ? Colors.black : Colors.white,
                icon: Icon(
                  selectedPageIndex == 2
                      ? Icons.add_a_photo
                      : Icons.add_a_photo,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () => {onIconTap(3)},
                iconSize: _iconSize,
                icon: Icon(
                  selectedPageIndex == 3
                      ? Icons.notifications
                      : Icons.notifications_outlined,
                  color: Colors.white,
                )),
            InkWell(
              onTap: () => {onIconTap(4)},
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: _iconSize / 2,
                backgroundImage: NetworkImage(currentUser.profileImageUrl),
              ),
            )
          ],
        ),
      ),
    );
  }
}
