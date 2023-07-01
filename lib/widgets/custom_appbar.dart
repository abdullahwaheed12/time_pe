import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:time_pe/utils/colors.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 42,
              width: 42,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 8),
              decoration: insetShadow.BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors. background,
                boxShadow: [
                  insetShadow.BoxShadow(
                      blurRadius: 4,
                      offset: -Offset(4, 4),
                      color: Colors.white,
                      inset: true),
                  insetShadow.BoxShadow(
                      blurRadius: 4,
                      offset: Offset(4, 4),
                      color: AppColors.greyInnerShadow,
                      inset: true),
                ],
              ),
              child: Icon(
                Icons.arrow_back_ios,
                color: AppColors.kprimaryColor,
              ),
            ),
          ),
          Spacer(),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
          ),
           Spacer(),
        ],
      ),
      
    );
  
  }
}
