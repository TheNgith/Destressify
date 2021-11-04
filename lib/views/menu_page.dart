import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Stack(alignment: Alignment.topCenter, children: [
          Container(
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80.0),
                    bottomRight: Radius.circular(80.0)),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.black38, radius: 40.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Nguyễn Gia Thịnh',
                    style: TextStyle(
                        fontFamily: 'Montserrat Bold', fontSize: 25.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Text(
                    'UserID: 785824',
                    style: TextStyle(
                        fontFamily: 'Montserrat Light', fontSize: 15.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('YOB:',
                                style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 12.0)),
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(
                                '2004',
                                style: TextStyle(
                                    fontFamily: 'Montserrat Regular',
                                    fontSize: 12.0),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Height:',
                                style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 12.0)),
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(
                                '1.72m',
                                style: TextStyle(
                                    fontFamily: 'Montserrat Regular',
                                    fontSize: 12.0),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 30.0,
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Weight:',
                                style: TextStyle(
                                    fontFamily: 'Montserrat Bold',
                                    fontSize: 12.0)),
                            Padding(
                              padding: const EdgeInsets.only(left: 2.0),
                              child: Text(
                                '84kg',
                                style: TextStyle(
                                    fontFamily: 'Montserrat Regular',
                                    fontSize: 12.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "AVG HRate",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Regular',
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    '82.3',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Bold',
                                        fontSize: 25.0),
                                  ),
                                  Text(
                                    'bpm',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Regular',
                                        fontSize: 15.0),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "AVG Steps",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Regular',
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    '2301',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Bold',
                                        fontSize: 25.0),
                                  ),
                                  Text(
                                    'per day',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Regular',
                                        fontSize: 15.0),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "AVG Sleep",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Regular',
                                        fontSize: 15.0),
                                  ),
                                  Text(
                                    '7.82',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Bold',
                                        fontSize: 25.0),
                                  ),
                                  Text(
                                    'hours/day',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat Regular',
                                        fontSize: 15.0),
                                  )
                                ],
                              ),
                            ),
                          ]),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 170.0,
                          height: 130.0,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.chartPie,
                                size: 48.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text('Health\nData',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Montserrat Bold',
                                      fontSize: 15.0,
                                    )),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 170.0,
                          height: 130.0,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.addressBook,
                                size: 48.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text('Close\nContacts',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Montserrat Bold',
                                      fontSize: 15.0,
                                    )),
                              )
                            ],
                          ),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 130.0,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.fileMedicalAlt,
                          size: 48.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Measure',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat Bold',
                                      fontSize: 30.0),
                                ),
                                Text(
                                  'Today: 1/3 times',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat Regular',
                                      fontSize: 15.0),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ])
      ],
    );
  }
}
