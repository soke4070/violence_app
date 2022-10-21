
// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:violence_app/controllers/auth_controller.dart';

import 'package:violence_app/views/screens_auth/login_page.dart';
import 'package:violence_app/widgets/splash_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then(
    (value) {
      Get.put(AuthController());
    },
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: 4321``,
      title: 'Violence App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black, textTheme: TextTheme(subtitle1:  TextStyle(color: Colors.white)),
       ),
      home: SplashPage(duration: 2, goToPage: WelcomePage(),)
    );
  }
}

