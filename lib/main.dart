import 'package:flutter/material.dart';
import 'package:green_app/navigation_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const NavigationContainer(),
    );
  }
}
