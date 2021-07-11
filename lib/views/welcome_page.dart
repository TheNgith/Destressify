import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Container(
              padding: const EdgeInsets.all(40.0),
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.redAccent),
              child: Image(image: AssetImage('assets/images/brain.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: welcome_page_row_widget('assets/images/finger.png', 'Start'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: welcome_page_row_widget('assets/images/file.png', 'About'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: welcome_page_row_widget('assets/images/logout.png', 'Exit'),
          )
        ],
      ),
    ));
  }
}

class welcome_page_row_widget extends StatelessWidget {
  final image;
  final text;

  welcome_page_row_widget(this.image, this.text);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 40.0, child: Image(image: AssetImage(image))),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
              alignment: Alignment.center,
              height: 50.0,
              width: 150.0,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              )),
        ),
      ],
    );
  }
}
