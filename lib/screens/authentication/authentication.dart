import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:time_pe/screens/authentication/personal_info.dart';
import 'package:time_pe/widgets/custom_appbar.dart';

import '../../utils/colors.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: insetShadow.BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  AppColors.kprimaryColorLight,
                  AppColors.kprimaryColor,
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topCenter,
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 36),
                  child: CustomAppBar(title: 'Authentication')),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20, right: 5),
                  padding: EdgeInsets.all(16),
                  width: width,
                  decoration: insetShadow.BoxDecoration(
                    color: AppColors.background,
                    boxShadow: [
                      insetShadow.BoxShadow(
                          blurRadius: 4,
                          offset: Offset(4, 4),
                          color: AppColors.greyInnerShadow,
                          inset: true),
                      insetShadow.BoxShadow(
                          blurRadius: 4,
                          offset: Offset(4, 4),
                          color: AppColors.greyInnerShadow,
                          inset: false),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 151.6,
                          width: 277.07,
                          
                          child: SvgPicture.asset('assets/svg_images/progress_steps.svg'),
                        ),
                        //Personal Info
                        GestureDetector(
                          onTap: () {
                            Get.to(PersonalInfo());
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 59,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            decoration: insetShadow.BoxDecoration(
                              borderRadius: BorderRadius.circular(18.0),
                              color: Color(0xffEFF3FF),
                              boxShadow: [
                                insetShadow.BoxShadow(
                                    blurRadius: 3,
                                    offset: -Offset(3, 3),
                                    color: Colors.white,
                                    inset: true),
                                insetShadow.BoxShadow(
                                    blurRadius: 3,
                                    offset: Offset(3, 3),
                                    color: AppColors.greyInnerShadow,
                                    inset: true),
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextField(
                                    enabled: false,
                                    decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.person),
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                        hintText: 'Personal Info'),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: insetShadow.BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff8A8A8A),
                                      boxShadow: [
                                        insetShadow.BoxShadow(
                                            blurRadius: 1,
                                            offset: -Offset(1, 1),
                                            color: Colors.white,
                                            inset: true),
                                        insetShadow.BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(3, 3),
                                            color: Color(0xff707070),
                                            inset: true),
                                      ]),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //Face Authentication
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 59,
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          decoration: insetShadow.BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: AppColors.background,
                            boxShadow: [
                              insetShadow.BoxShadow(
                                  blurRadius: 3,
                                  offset: -Offset(3, 3),
                                  color: Colors.white,
                                  inset: true),
                              insetShadow.BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(3, 3),
                                  color: AppColors.greyInnerShadow,
                                  inset: true),
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person),
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                      hintText: 'Face Authentication'),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: insetShadow.BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff8A8A8A),
                                    boxShadow: [
                                      insetShadow.BoxShadow(
                                          blurRadius: 1,
                                          offset: -Offset(1, 1),
                                          color: Colors.white,
                                          inset: true),
                                      insetShadow.BoxShadow(
                                          blurRadius: 3,
                                          offset: Offset(3, 3),
                                          color: Color(0xff00000066),
                                          inset: true),
                                    ]),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                        //Sub Accounts
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 59,
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          decoration: insetShadow.BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            color: AppColors.background,
                            boxShadow: [
                              insetShadow.BoxShadow(
                                  blurRadius: 3,
                                  offset: -Offset(3, 3),
                                  color: Colors.white,
                                  inset: true),
                              insetShadow.BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(3, 3),
                                  color: AppColors.greyInnerShadow,
                                  inset: true),
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person),
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                      hintText: 'Sub Accounts'),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: insetShadow.BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff8A8A8A),
                                    boxShadow: [
                                      insetShadow.BoxShadow(
                                          blurRadius: 1,
                                          offset: -Offset(1, 1),
                                          color: Colors.white,
                                          inset: true),
                                      insetShadow.BoxShadow(
                                          blurRadius: 3,
                                          offset: Offset(3, 3),
                                          color: Color(0xff00000066),
                                          inset: true),
                                    ]),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 27,
                                width: 27,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/unlock.png',
                                      ),
                                      // colorFilter: ColorFilter.mode(
                                      //     Color(0xff707070), BlendMode.color),
                                    )),
                              ),
                              Text('128 bit SSL Protection Secure')
                            ],
                          ),
                        )),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
