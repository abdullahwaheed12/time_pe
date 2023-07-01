import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:time_pe/screens/home/view.dart';
import 'package:time_pe/widgets/button1.dart';

import '../../utils/colors.dart';

class VerificationToDashboard extends StatelessWidget {
  const VerificationToDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    if (height<600) {
      
    }
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.only(
                    top: 36,
                  
                  ),
                  child: SizedBox(
                      height: 40,
                      width: 140,
                      child: SvgPicture.asset(
                        'assets/svg_images/splash.svg',
                        color: Colors.black,
                      )),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                      height: 263,
                      width: 307,
                      child: Lottie.asset(
                        'assets/lottie_animation/go_to_dashbord_lottie.json',
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, right: 5),
                  padding: EdgeInsets.all(16),
                  width: width,
                  height: height*0.6,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Account',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: insetShadow.BoxDecoration(
                                color: AppColors.kprimaryColor,
                                shape: BoxShape.circle),
                            child: Image.asset('assets/images/check.png'),
                          ),
                        ],
                      ),
                      Text('Approved!',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.kprimaryColor)),
                      Text(
                        'Congratulations, \n we have processed timepe credit amount of',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                      Text.rich(
                        TextSpan(
                            text: 'RS  ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            children: [
                              TextSpan(
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.kprimaryColor),
                                  text: '10,000')
                            ]),
                      ),
                      Text(
                        'Amount will reflect in your account soon.',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                      Text('HAVE A NICE DAY',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.kprimaryColor)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Button1(
                            onPressed: () {
                              Get.offAll(Home());
                            },
                            text: 'Go To Dashboard'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
