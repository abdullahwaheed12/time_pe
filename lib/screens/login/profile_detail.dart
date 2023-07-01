import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:time_pe/screens/login/success_submitted.dart';
import 'package:time_pe/widgets/button1.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart' as innershadow;

import '../../utils/colors.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(33.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0),
                child: SizedBox(
                  width: 183,
                    height: 325, child: Lottie.asset('assets/lottie_animation/profile_detail_lottie.json')),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Profile Details",
                  style: TextStyle(
                      color: AppColors.kprimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter your full name as per Pan Card',
                  style: TextStyle(color: AppColors.greyFont, fontSize: 18),
                ),
              ),
             Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 59,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: innershadow.BoxDecoration(
                  borderRadius: BorderRadius.circular(36.0),
                  color: AppColors.background,
                  boxShadow: [
                    innershadow.BoxShadow(
                        blurRadius: 3,
                        offset: -Offset(3, 3),
                        color: Colors.white,
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
                            prefixIcon: Image.asset('assets/images/icon_person.png'),
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: AppColors.greyFont),
                            hintText: 'Enter Full Name'),
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
                            style: TextStyle(color: AppColors.kprimaryColor, fontSize: 9))
                      ])),
                ],
              ),
             
              Button1(onPressed: () {
                Get.to(SuccessfullSubmitted());
              }, text: 'Continue')
            ],
          ),
        ),
      ),
    );
  }
}
