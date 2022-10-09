import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:violence_app/controllers/auth_controller.dart';
import 'package:violence_app/models/violence.dart';
import 'package:violence_app/navigation_container.dart';
import 'package:violence_app/views/profile_page.dart';
import 'package:violence_app/views/screens_auth/home_screen.dart';
import 'package:violence_app/views/screens_auth/login_page.dart';
import 'package:violence_app/views/screens_auth/registration_page.dart';
import 'package:violence_app/views/violence_page.dart';
import 'package:violence_app/widgets/constants.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Violence App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)),
      home: LoginPage(),
    );
  }
}
