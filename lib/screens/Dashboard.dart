import 'package:flutter/material.dart';

void main() {}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('USED CARS 4 SALE'.toUpperCase()),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(
          image: AssetImage('lib/images/spectre_050.jpg'),
        ),
      ),
    );
  }
}
