import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Dashboard.dart';

//main function, starting point for the flutter app
void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        title: 'Cars4sale',
        home: Dashboard());
  }
}
