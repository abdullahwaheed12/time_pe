import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:time_pe/widgets/custom_appbar.dart';

import '../../utils/colors.dart';
import 'faceauthentication.dart';
import 'logic.dart';

class KYC extends StatefulWidget {
  const KYC({Key? key}) : super(key: key);

  @override
  State<KYC> createState() => _KYCState();
}

class _KYCState extends State<KYC> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GetBuilder<AuthenticationController>(builder: (controller) {
          return Container(
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
                  child: CustomAppBar(title: 'KYC')
                ),
                
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 20, right: 5),
                    padding: EdgeInsets.all(32),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Hey dude do you have Pan Card?',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Yes',
                                  style: TextStyle(
                                      color: controller.isPanCardCheck
                                          ? AppColors.kprimaryColor
                                          : Colors.black),
                                ),
                                Checkbox(
                                    side: BorderSide(
                                        color: controller.isPanCardCheck
                                            ? AppColors.kprimaryColor
                                            : Colors.black),
                                    fillColor: MaterialStateProperty.all(
                                        AppColors.kprimaryColor),
                                    value: controller.isPanCardCheck,
                                    onChanged: (value) {
                                      setState(() {
                                        controller.isPanCardCheck =
                                            value ?? false;
                                      });
                                    })
                              ],
                            ),
                            Column(
                              children: [
                                Text('No'),
                                Checkbox(value: false, onChanged: (value) {})
                              ],
                            ),
                          ],
                        ),
                        //Pan Card Number
                        Row(
                          children: [
                            Image.asset('assets/images/id-card.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: TextField(
                                controller: controller.panNumberTEController,
                                decoration: InputDecoration(
                                  hintText: 'PAN Card Number',
                                  suffixIcon: Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(5),
                                      height: 25,
                                      width: 25,
                                      decoration: insetShadow.BoxDecoration(
                                        color: AppColors.kprimaryColor,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          insetShadow.BoxShadow(
                                              blurRadius: 3,
                                              offset: Offset(3, 3),
                                              color: Color(0xff707070),
                                              inset: true)
                                        ],
                                      ),
                                      child: Image.asset('assets/images/check.png')),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),

                        //Another Number
                        Row(
                          children: [
                            Image.asset('assets/images/id-card.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: TextField(
                                controller:
                                    controller.anotherNumberTEController,
                                decoration: InputDecoration(
                                  hintText: 'Another Number',
                                  suffixIcon: Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(5),
                                      height: 25,
                                      width: 25,
                                      decoration: insetShadow.BoxDecoration(
                                        color: AppColors.kprimaryColor,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          insetShadow.BoxShadow(
                                              blurRadius: 3,
                                              offset: Offset(3, 3),
                                              color: Color(0xff707070),
                                              inset: true)
                                        ],
                                      ),
                                      child: Image.asset('assets/images/check.png')),
                                ),
                              ),
                            )
                          ],
                        ),
                        //Submit
                        Expanded(
                          child: Visibility(
                            visible: controller.isStudentCheck,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: GestureDetector(
                                onTap: (){
                                  Get.to(FaceAuthentication());
                                },
                                child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    padding: EdgeInsets.symmetric(horizontal: 20),
                                    height: 59,
                                    width: MediaQuery.of(context).size.width,
                                    alignment: Alignment.center,
                                    decoration: insetShadow.BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: AppColors.kprimaryColor,
                                      boxShadow: [
                                        insetShadow.BoxShadow(
                                            blurRadius: 5,
                                            offset: Offset(5, 5),
                                            color: Colors.black.withOpacity(0.3),
                                            inset: false),
                                        insetShadow.BoxShadow(
                                            blurRadius: 5,
                                            offset: Offset(5, 5),
                                            color: Colors.black.withOpacity(0.5),
                                            inset: true),
                                      ],
                                    ),
                                    child: Text(
                                          'Submit',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
