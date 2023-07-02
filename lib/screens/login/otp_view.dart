import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:time_pe/screens/login/profile_detail.dart';
import 'package:time_pe/widgets/button1.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as innershadow;
import '../../utils/colors.dart';

class OTPView extends StatelessWidget {
  const OTPView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 216,
                  height: 223,
                  child:
                      Lottie.asset('assets/lottie_animation/otp_lottie.json')),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "OTP Verification",
                  style: TextStyle(
                      color: AppColors.kprimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter 4 Digit OTP',
                    style: TextStyle(color: AppColors.greyFont),
                  )),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 56,
                    width: 56,
                    decoration: innershadow.BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        innershadow.BoxShadow(
                            blurRadius: 5,
                            offset: -Offset(5, 5),
                            color: AppColors.white,
                            inset: true),
                        innershadow.BoxShadow(
                            blurRadius: 5,
                            offset: Offset(5, 5),
                            color: AppColors.greyInnerShadow,
                            inset: true)
                      ],
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle:
                            TextStyle(fontSize: 24, color: AppColors.greyFont),
                        hintText: "*",
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 56,
                    width: 56,
                    decoration: innershadow.BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        innershadow.BoxShadow(
                            blurRadius: 5,
                            offset: -Offset(5, 5),
                            color: AppColors.white,
                            inset: true),
                        innershadow.BoxShadow(
                            blurRadius: 5,
                            offset: Offset(5, 5),
                            color: AppColors.greyInnerShadow,
                            inset: true)
                      ],
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        alignLabelWithHint: true,
                        hintStyle:
                            TextStyle(fontSize: 24, color: AppColors.greyFont),
                        hintText: "*",
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 56,
                    width: 56,
                    decoration: innershadow.BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        innershadow.BoxShadow(
                            blurRadius: 5,
                            offset: -Offset(5, 5),
                            color: AppColors.white,
                            inset: true),
                        innershadow.BoxShadow(
                            blurRadius: 5,
                            offset: Offset(5, 5),
                            color: AppColors.greyInnerShadow,
                            inset: true)
                      ],
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        alignLabelWithHint: true,
                        hintStyle:
                            TextStyle(fontSize: 24, color: AppColors.greyFont),
                        hintText: "*",
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 56,
                    width: 56,
                    decoration: innershadow.BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        innershadow.BoxShadow(
                            blurRadius: 5,
                            offset: -Offset(5, 5),
                            color: AppColors.white,
                            inset: true),
                        innershadow.BoxShadow(
                            blurRadius: 5,
                            offset: Offset(5, 5),
                            color: AppColors.greyInnerShadow,
                            inset: true)
                      ],
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        alignLabelWithHint: true,
                        hintStyle:
                            TextStyle(fontSize: 24, color: AppColors.greyFont),
                        hintText: "*",
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (v) {}),
                  Text.rich(TextSpan(
                      text: 'I have read and agreed to the',
                      style: TextStyle(fontSize: 9),
                      children: [
                        TextSpan(
                            text: 'Terms of Use & Privacy \n Policy',
                            style: TextStyle(
                                color: AppColors.kprimaryColor, fontSize: 9))
                      ])),
                ],
              ),
              Button1(
                  onPressed: () {
                    Get.to(ProfileDetail());
                  },
                  text: 'Continue')
            ],
          ),
        ),
      ),
    );
  }
}
