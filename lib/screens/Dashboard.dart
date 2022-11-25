import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          child: IconButton(
            icon: Icon(FontAwesomeIcons.bagShopping),
            onPressed: () {},
            iconSize: 50,
            color: Colors.brown,
          ),
        ));
  }
}
