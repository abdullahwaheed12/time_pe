import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:time_pe/screens/authentication/logic.dart';
import 'package:time_pe/screens/authentication/kyc.dart';
import 'package:time_pe/widgets/custom_appbar.dart';

import '../../utils/colors.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  child:
                CustomAppBar(title: 'Personal Info')
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
                          'May I know your occupation?',
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
                                  'Student',
                                  style: TextStyle(
                                      color: controller.isStudentCheck
                                          ? AppColors.kprimaryColor
                                          : Colors.black),
                                ),
                                Checkbox(
                                    side: BorderSide(
                                        color: controller.isStudentCheck
                                            ? AppColors.kprimaryColor
                                            : Colors.black),
                                    fillColor: MaterialStateProperty.all(
                                        AppColors.kprimaryColor),
                                    value: controller.isStudentCheck,
                                    onChanged: (value) {
                                      setState(() {
                                        controller.isStudentCheck =
                                            value ?? false;
                                      });
                                    })
                              ],
                            ),
                            Column(
                              children: [
                                Text('Professional'),
                                Checkbox(value: false, onChanged: (value) {})
                              ],
                            ),
                          ],
                        ),
                        //Complete one time KYC
                        Expanded(
                          child: Visibility(
                            visible: controller.isStudentCheck,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: GestureDetector(
                                onTap: (){
                                  Get.to(KYC());
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
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Complete one time KYC',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        // SizedBox(width: 20,),
                                        Icon(Icons.arrow_forward_ios,color: Colors.white,)
                                      ],
                                    )),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
