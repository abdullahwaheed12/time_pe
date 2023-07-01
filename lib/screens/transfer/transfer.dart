import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:time_pe/screens/connecting_loading.dart';

import '../../utils/colors.dart';

class Transfer extends StatelessWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //App Bar
            Container(
                alignment: Alignment.topCenter,
                padding:
                    const EdgeInsets.symmetric(vertical: 36, horizontal: 36),
                child: Container(
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
                            color: AppColors.background,
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
                      Container(
                          height: 30,
                          width: 30,
                          child: Icon(
                            Icons.info_outlined,
                            color: AppColors.kprimaryColor,
                            size: 30,
                          ))
                    ],
                  ),
                )),
            ListTile(
              leading: Container(
                height: 100,
                width: 100,
                decoration: insetShadow.BoxDecoration(
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'assets/images/profile_image.png',
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                'Kishor Reddy',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'XXXXXX55689',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff707070)),
              ),
            ),
            Spacer(),
            Container(
              height: 68,
              width: width,
              decoration: BoxDecoration(color: AppColors.white),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: SizedBox(),
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: AppColors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                        hintText: 'Enter Amount'),
                  )),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ConnectingLoading());
                    },
                    child: Container(
                      height: 42,
                      width: 42,
                      alignment: Alignment.center,
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.kprimaryColor,
                        boxShadow: [
                          insetShadow.BoxShadow(
                              blurRadius: 4,
                              offset: -Offset(4, 4),
                              color: AppColors.white,
                              inset: false),
                          insetShadow.BoxShadow(
                              blurRadius: 4,
                              offset: Offset(4, 4),
                              color: AppColors.greyInnerShadow,
                              inset: true),
                        ],
                      ),
                      child: Image.asset('assets/images/send_icon.png'),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
