import 'package:destressify/widgets/round_container_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topCenter,
      children: [
        //coloured background part
        Container(
          height: 290.0,
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Connected notification
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Container(
                height: 20.0,
                width: 200.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2.0),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 2.5),
                      child: Container(
                        height: 10.0,
                        width: 10.0,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text('Connected to Google',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
            ),
            //avatar
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Stack(alignment: Alignment.topCenter, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: RoundContainerWidget(300.0, 100.0),
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 30.0,
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //thông số sức khỏe
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: RoundContainerWidget(85.0, 125.0),
                  ),
                  RoundContainerWidget(85.0, 125.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: RoundContainerWidget(85.0, 125.0),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: RoundContainerWidget(125.0, 125.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: RoundContainerWidget(125.0, 125.0),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10.0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: RoundContainerWidget(125.0, 125.0)),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: RoundContainerWidget(125.0, 125.0),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
