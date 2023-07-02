import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:time_pe/screens/login/otp_view.dart';
import 'package:time_pe/widgets/button1.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as innershadow;
import '../../utils/colors.dart';
import 'package:lottie/lottie.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: width,
                    height: 294,
                    child: Lottie.asset(
                      'assets/lottie_animation/sign_up_lottie.json',
                    )),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "What's Your Mobile Number",
                    style: TextStyle(
                        color: AppColors.kprimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login / Sign up',
                    style: TextStyle(
                        color: AppColors.greyFont,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 62,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  decoration: innershadow.BoxDecoration(
                    borderRadius: BorderRadius.circular(36.0),
                    color: AppColors.background,
                    boxShadow: [
                      innershadow.BoxShadow(
                          blurRadius: 3,
                          offset: -Offset(3, 3),
                          color: AppColors.white,
                          inset: true),
                      innershadow.BoxShadow(
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
                              prefixIcon: Container(
                                  constraints: BoxConstraints(
                                    maxHeight: 25,
                                    minHeight: 25,
                                    maxWidth: 17,
                                    minWidth: 17,
                                  ),
                                  child: Image.asset(
                                    'assets/images/signup_mobile.png',
                                  )),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: AppColors.greyFont),
                              hintText: 'Enter Mobile Number'),
                        ),
                      )
                    ],
                  ),
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
                      Get.to(OTPView());
                    },
                    text: 'Continue')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
