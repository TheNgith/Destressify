import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Username',
                                icon: Icon(Icons.person),
                                border: InputBorder.none)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                        child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                icon: Icon(Icons.lock),
                                border: InputBorder.none)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                '------- Or -------',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    alignment: Alignment.center,
                    width: 175.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 20.0,
                              height: 20.0,
                              child: Image(
                                  image:
                                      AssetImage('assets/images/google.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Google',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    )),
                Container(
                    alignment: Alignment.center,
                    width: 175.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 20.0,
                              height: 20.0,
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/facebook.png'))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ]),
      ));
    }));
  }
}
