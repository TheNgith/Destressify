import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HealthDataPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Health Data',
          style: TextStyle(
              fontFamily: 'Montserrat Bold',
              fontSize: 16.0,
              color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: FaIcon(FontAwesomeIcons.chevronLeft),
          onPressed: onPressed2(),
        ),
      ),
    );
  }
}

onPressed2() {}
