import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
          child: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: FaIcon(
                FontAwesomeIcons.brain,
                size: 150.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Destressify',
                style: TextStyle(fontFamily: 'Lobster', fontSize: 40.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                  alignment: Alignment.center,
                  width: 300.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(14.0)),
                  child: TextField(
                    style: TextStyle(
                        fontFamily: 'Montserrat Light', fontSize: 18.0),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.all(15.0),
                        hintText: 'Username'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                  alignment: Alignment.center,
                  width: 300.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(14.0)),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(
                        fontFamily: 'Montserrat Light', fontSize: 18.0),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: const EdgeInsets.all(15.0),
                        hintText: 'Password'),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SizedBox(
                width: 150.0,
                height: 40.0,
                child: ElevatedButton(
                    onPressed: onPressed(),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat Bold',
                          fontSize: 15.0),
                    ),
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(7.0),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(14.0))))),
              ),
            )
          ],
        ),
      ));
    }));
  }
}

onPressed() {}
