import 'package:flutter/material.dart';

//main function, starting point for the flutter app
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('I am Rich'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('lib/images/spectre_050.jpg'),
          ),
        ),
      ),
    ),
  );
}
