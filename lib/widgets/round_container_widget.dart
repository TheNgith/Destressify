import 'package:flutter/material.dart';

class RoundContainerWidget extends StatelessWidget {
  final height;
  final width;

  RoundContainerWidget(this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
