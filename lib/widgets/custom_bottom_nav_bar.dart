import 'package:flutter/material.dart';

import '../_mock_data/mock.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.selectedPageIndex, required this.onIconTap});
  final int selectedPageIndex;
  final Function onIconTap;
  final double _iconSize = 35;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () => {onIconTap(0)},
                iconSize: _iconSize,
                icon: Icon(
                  selectedPageIndex == 0 ? Icons.public : Icons.public_outlined,
                  color: Colors.green,
                )),
            IconButton(
                onPressed: () => {onIconTap(1)},
                iconSize: _iconSize,
                icon: Icon(
                  selectedPageIndex == 1
                      ? Icons.local_fire_department
                      : Icons.local_fire_department_outlined,
                  color: Colors.red,
                )),
            IconButton(
                onPressed: () => {onIconTap(2)},
                iconSize: _iconSize,
                icon: Icon(selectedPageIndex == 2
                    ? Icons.search
                    : Icons.search_outlined)),
            IconButton(
                onPressed: () => {onIconTap(3
                )},
                iconSize: _iconSize,
                icon: Icon(
                  selectedPageIndex == 3
                      ? Icons.notifications
                      : Icons.notifications_outlined,
                )),
            InkWell(
              onTap: () => {onIconTap(4
                )} ,
              child: CircleAvatar(
                backgroundColor: Colors.black,
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
