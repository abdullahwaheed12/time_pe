import 'package:flutter/material.dart' hide BoxShadow,BoxDecoration;
import 'package:time_pe/utils/colors.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class CustomNumorphic extends StatelessWidget {
  const CustomNumorphic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Offset distence=Offset(2, 2);
    double blur=2;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(150)),
          color: AppColors.background,
          
          boxShadow: [
            // BoxShadow(
            //   blurRadius: blur,
            //   offset: -Offset(5,5)-distence,
            //   color: Colors.white,
            //   inset: false
            // ),
            //  BoxShadow(
            //   blurRadius: blur,
            //   offset: -distence,
            //   color: AppColors.greyInnerShadow,
            //   inset: false
            // ),
            BoxShadow(
              blurRadius: blur,
              offset: distence,
              color: AppColors.greyInnerShadow,
              inset: true
            ),
          ],
          
        ),
        child: SizedBox(height: 150,width:300),
        ),
      ),
    );
  }
}
