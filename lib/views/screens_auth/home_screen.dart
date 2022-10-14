import 'package:flutter/material.dart';
import '../../widgets/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            pageIdx = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Color.fromARGB(255, 255, 0, 76),
        unselectedItemColor: Colors.white,
        currentIndex: pageIdx,
        items: const [
          BottomNavigationBarItem(
            // ignore: unnecessary_const
            icon: const ImageIcon(
              AssetImage('lib/icons/danger.png'),
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_fire_department, size: 35),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore, size: 30),
            label: '',
          ),
    
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active, size: 30),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: '',
          ),
        ],
      ),
      body: pages[pageIdx],
    );
  }
}
