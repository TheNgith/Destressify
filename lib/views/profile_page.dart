import 'package:destressify/widgets/infoBox.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Profile',
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
            onPressed: onBackPressed(),
          ),
        ),
        body: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Container(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black38,
                            radius: 50.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Text(
                              'Nguyễn Gia Thịnh',
                              style: TextStyle(
                                  fontFamily: 'Montserrat Bold',
                                  fontSize: 20.0),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: InfoBox(category: 'phone')),
                          Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: InfoBox(category: 'age')),
                          Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: InfoBox(category: 'height')),
                          Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: InfoBox(category: 'weight'))
                        ]))),
          );
        }));
  }
}

onBackPressed() {}
