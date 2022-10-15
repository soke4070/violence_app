// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:violence_app/views/screens_auth/login_page.dart';
import 'package:violence_app/widgets/themebbutton.dart';

import '../views/screens_auth/registration_page.dart';

class SplashPage extends StatelessWidget {
  @required
  int duration = 0;
  @required
  Widget goToPage;

  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage));
    });
    return Scaffold(
        body: Container(
      color: Colors.black,
      // ignore: prefer_const_constructors
      child: Center(
        child: const ImageIcon(
          AssetImage('lib/icons/danger.png'),
          size: 200,
          color: Colors.white,
        ),
      ),
    ));
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 1,
              child: Image.asset('assets/main.png', fit: BoxFit.cover),
            ),
          ),
          Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                Center(
                  child: ClipOval(
                    child: ImageIcon(
                      AssetImage('lib/icons/danger.png'),
                      size: 20,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Text('Welcome Comrade',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 40),
                Text('A Wise Comrade Once Said\n"Peace Was Never An Option"',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.red, fontSize: 20)),
                SizedBox(height: 50),
                ThemeButton(
                  label: 'EXIT IF YOU ARE WEAK !',
                  highlight: Colors.red[900],
                  color: Colors.black,
                  onClick: () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  },
                ),
                ThemeButton(
                  label: 'Register',
                  highlight: Colors.red[900],
                  color: Colors.black,
                  borderColor: Colors.white,
                  onClick: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RegistrationPage(),
                    ),
                  ),
                ),
                ThemeButton(
                  label: "Login",
                  labelColor: Colors.white,
                  color: Colors.transparent,
                  highlight: Colors.pink.withOpacity(0.5),
                  borderColor: Colors.white,
                  borderWidth: 4,
                  onClick: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  ),
                )
              ]))
        ],
      ),
    ));
  }
}
