import 'package:flutter/material.dart';
import 'package:time_pe/utils/colors.dart';

class DashBoarder extends StatelessWidget {
  const DashBoarder({Key? key,this.color=AppColors.lightBlack}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width,
      height: 2,
      child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (contaxt, index) {
            return Container(
              height: 2,
              width: 10,
              color: color,
              margin: EdgeInsets.symmetric(horizontal: 5),
            );
          }),
    );
  }
}
