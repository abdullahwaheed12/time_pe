import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:time_pe/screens/authentication/logic.dart';
import 'package:time_pe/widgets/custom_appbar.dart';

import '../../utils/colors.dart';
import 'view2.dart';

class VerificationSuccessfull extends StatelessWidget {
  const VerificationSuccessfull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AuthenticationController());
    var width = MediaQuery.of(context).size.width;
    Future.delayed(Duration(seconds: 2)).then((value) {
      Get.to(VerificationToDashboard());
    });
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
                  child: CustomAppBar(title: 'Verification')),
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
                        Text('Documents submitted',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        Text('Successfully!',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: AppColors.kprimaryColor)),
                        Spacer(),
                            Lottie.asset('assets/lottie_animation/hello_animation.json'),

                        SizedBox(
                            height: 111,
                            width: 144,
                            child: Lottie.asset('assets/lottie_animation/searching.json')),
                        Text('Please wait...60sec',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                        Text('we are approving your credit limit',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                        SizedBox(height: 30,),
                        SizedBox(
                          width: 206,
                          height: 103,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [

                            Lottie.asset('assets/lottie_animation/speed_meter.json'),
                              Positioned(
                                bottom: 15,
                                child: Text('45 Sec',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.kprimaryColor,
                                        fontWeight: FontWeight.w600)),
                              )
                            ],
                          ),
                        ),
                        Container(
                            height: 40,
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
