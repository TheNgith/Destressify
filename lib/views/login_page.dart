import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
                child: Text('Login',
                    style: TextStyle(
                        fontSize: 50.0, fontWeight: FontWeight.bold))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              child: Text(
                'Username',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.normal),
              ),
            ),
          )
        ]),
      ));
    }));
  }
}
