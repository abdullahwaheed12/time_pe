import 'package:flutter/material.dart';

class LineIndicate extends StatelessWidget {
  const LineIndicate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 15,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
    );
  }
}
