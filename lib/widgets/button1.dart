import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import '../utils/colors.dart';

class Button1 extends StatelessWidget {
  const Button1({Key? key, required this.onPressed, required this.text,this.color=AppColors.kprimaryColor})
      : super(key: key);
  final String text;
  final void Function()? onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return
        //submit button
        Align(
      alignment: Alignment.bottomCenter,
      child: InkWell(
        onTap: onPressed,
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 59,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: insetShadow.BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: color,
              boxShadow: [
                insetShadow.BoxShadow(
                    blurRadius: 5,
                    offset: Offset(5, 5),
                    color: Colors.black.withOpacity(0.3),
                    inset: false),
                insetShadow.BoxShadow(
                    blurRadius: 10,
                    offset: Offset(10, 10),
                    color: Colors.black.withOpacity(0.3),
                    inset: true),
              ],
            ),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  
  }
}
