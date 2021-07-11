import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Container(
          width: 200.0,
          height: 200.0,
          child: Image(image: AssetImage('assets/images/brain.png'))),
    ));
  }
}
