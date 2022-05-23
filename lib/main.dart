import 'package:flutter/material.dart';
import 'package:pressing/screens/splashscreen.dart';
import 'package:pressing/screens/support.dart';
 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: SplashScreen(),
      routes: {
        SupportScreen.routeName:(context) => SupportScreen(),
      },
    );
  }
}
