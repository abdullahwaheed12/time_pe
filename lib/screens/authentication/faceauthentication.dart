import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:time_pe/screens/setup_profile/view.dart';
import 'package:time_pe/widgets/custom_appbar.dart';

import '../../utils/colors.dart';
import 'logic.dart';

class FaceAuthentication extends StatefulWidget {
  const FaceAuthentication({Key? key}) : super(key: key);

  @override
  State<FaceAuthentication> createState() => _FaceAuthenticationState();
}

class _FaceAuthenticationState extends State<FaceAuthentication> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.lightBlack,
      body: SafeArea(
        child: GetBuilder<AuthenticationController>(builder: (controller) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //top container with appbar
                Container(
                    height: 95,
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 36),
                    decoration: insetShadow.BoxDecoration(
                      color: AppColors.background,
                      gradient: LinearGradient(
                          colors: [
                            AppColors.kprimaryColorLight,
                            AppColors.kprimaryColor,
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      boxShadow: [
                        insetShadow.BoxShadow(
                            blurRadius: 2,
                            offset: Offset(2, -2),
                            color: AppColors.greyInnerShadow,
                            inset: true),
                        insetShadow.BoxShadow(
                            blurRadius: 2,
                            offset: -Offset(2, 2),
                            color: AppColors.greyInnerShadow,
                            inset: true),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(0),
                      ),
                    ),
                    child: CustomAppBar(title: 'Face Authentication')),
                Expanded(
                  child: Container(
                    child: ListView(
                      shrinkWrap: false,
                      children: [
                        Container(
                          padding: EdgeInsets.all(32),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                  child: SizedBox(
                                      height: 160,
                                      width: 142,
                                      child: Image.asset(
                                          "assets/images/mobile_hand.png"))),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Capture Selfie',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'important point before taking selfie',
                                  style: TextStyle(color: AppColors.greyFont),
                                ),
                              ),
                              Text(
                                'Please keep this in mind',
                                style: TextStyle(
                                    color: AppColors.kprimaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //hint 1
                              Container(
                                height: 56,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xff1A242D),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset('assets/images/person.PNG'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Remove glasses,cap, etc',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0xffFF5756),
                                      child: SizedBox(
                                          height: 20,
                                          width: 20,
                                          child:
                                              Image.asset('assets/images/cross.PNG')),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //hint 2
                              Container(
                                height: 56,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xff1A242D),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset('assets/images/person1.PNG'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'No face mask',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0xffFF5756),
                                      child: SizedBox(
                                          height: 20,
                                          width: 20,
                                          child:
                                              Image.asset('assets/images/cross.PNG')),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //hint 3
                              Container(
                                height: 56,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xff1A242D),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset('assets/images/person2.PNG'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'No blurred',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Color(0xffFF5756),
                                      child: SizedBox(
                                          height: 20,
                                          width: 20,
                                          child:
                                              Image.asset('assets/images/cross.PNG')),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //hint 3
                              Container(
                                height: 56,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xff1A242D),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset('assets/images/person3.PNG'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Clear with good light',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: Colors.green,
                                      child: SizedBox(
                                          height: 20,
                                          width: 20,
                                          child:
                                              Image.asset('assets/images/check.png')),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              // button button
                              GestureDetector(
                                onTap: () {
                                  Get.to(SetUpProfile());
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 5),
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  height: 59,
                                  width: MediaQuery.of(context).size.width,
                                  alignment: Alignment.center,
                                  decoration: insetShadow.BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
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
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Take Selfie',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.camera_alt_rounded)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
