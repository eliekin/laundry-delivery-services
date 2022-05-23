import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pressing/screens/tabs_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 2),
        (() => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => TabsScreen()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'PRESSING BENEDICTION',
          style: TextStyle(color: Colors.lightBlue, letterSpacing: 3),
        ),
      ),
    );
  }
}
