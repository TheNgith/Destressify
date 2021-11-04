import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../bloc/profile_data.dart';

class InfoBox extends StatefulWidget {
  final String category;

  const InfoBox({Key? key, required this.category}) : super(key: key);

  @override
  _InfoBoxState createState() => _InfoBoxState();
}

class _InfoBoxState extends State<InfoBox> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String key = widget.category;
    String content = Guider[key][0];
    myController.text = content;
    return Container(
      padding: const EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
      width: 350.0,
      height: 100.0,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Guider[key].elementAt(1),
                style: TextStyle(fontFamily: 'Montserrat Bold', fontSize: 15.0),
              ),
              Text(
                content,
                style: TextStyle(fontFamily: 'Montserrat Regular'),
              )
            ],
          ),
          TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      title: Text(
                        'Phone Number',
                        style: TextStyle(fontFamily: 'Montserrrat Bold'),
                      ),
                      actions: [
                        TextButton(
                            child: Text('Done'),
                            onPressed: () async {
                              await updateValue(key, myController);
                              setState(() {});
                              Navigator.pop(context);
                            })
                      ],
                      content: Container(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(bottom: 0.0, top: 0.0)),
                          controller: myController,
                        ),
                      ),
                    );
                  });
            },
            child: Text(
              'Edit',
              style: TextStyle(
                  fontFamily: 'Montserrat Bold',
                  fontSize: 15.0,
                  color: Colors.black,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(0.0, 2.0),
                      blurRadius: 2.0,
                      color: Colors.black38,
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}

Future updateValue(String key, TextEditingController myController) async {
  Guider[key][0] = myController.text;
}

onBackPressed() {}
