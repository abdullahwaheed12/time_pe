import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:time_pe/screens/authentication/logic.dart';
import 'package:time_pe/screens/home/view.dart';

import '../../utils/colors.dart';
import '../../widgets/button1.dart';
import '../../widgets/custom_appbar.dart';

class MobileRecharge2 extends StatefulWidget {
  const MobileRecharge2({Key? key, required this.contact}) : super(key: key);
  final Contact contact;

  @override
  State<MobileRecharge2> createState() => _MobileRecharge2State();
}

class _MobileRecharge2State extends State<MobileRecharge2> {
  @override
  Widget build(BuildContext context) {
    Get.put(AuthenticationController());
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              // app bar
              Container(
                padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 36),
                child: CustomAppBar(title: 'Mobile Recharge')),
             
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
                        Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            //contact
                            Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                    alignment: Alignment.center,
                                    height: 56,
                                    width: 56,
                                    decoration: insetShadow.BoxDecoration(
                                      color: AppColors.kprimaryColor,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        insetShadow.BoxShadow(
                                            blurRadius: 6,
                                            offset: Offset(3, 3),
                                            color:
                                                Colors.black.withOpacity(0.7),
                                            inset: true)
                                      ],
                                    ),
                                    child: Text(
                                      widget.contact.displayName![0]
                                          .toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(widget.contact.displayName ?? ''),
                                    Text(widget.contact.phones![0].value ?? ''),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            // dash border
                            SizedBox(
                              width: width,
                              height: 2,
                              child: ListView.builder(
                                  itemCount: 20,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (contaxt, index) {
                                    return Container(
                                      height: 2,
                                      width: 10,
                                      color: Color(
                                        0xff707070,
                                      ),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                    );
                                  }),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        //select state and circle
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                alignment: Alignment.center,
                                decoration: insetShadow.BoxDecoration(
                                  borderRadius: BorderRadius.circular(36.0),
                                  color: AppColors.background,
                                  boxShadow: [
                                    insetShadow.BoxShadow(
                                        blurRadius: 5,
                                        offset: -Offset(5, 5),
                                        color: Colors.white,
                                        inset: true),
                                    insetShadow.BoxShadow(
                                        blurRadius: 5,
                                        offset: Offset(5, 5),
                                        color: AppColors.greyInnerShadow,
                                        inset: true),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                        child: Text('Select State',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300))),
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: insetShadow.BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff707070),
                                        boxShadow: [
                                          insetShadow.BoxShadow(
                                              blurRadius: 1,
                                              offset: Offset(1, 1),
                                              color: AppColors.greyInnerShadow,
                                              inset: true),
                                        ],
                                      ),
                                      child: Image.asset('assets/images/check.png'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                alignment: Alignment.center,
                                decoration: insetShadow.BoxDecoration(
                                  borderRadius: BorderRadius.circular(36.0),
                                  color: AppColors.background,
                                  boxShadow: [
                                    insetShadow.BoxShadow(
                                        blurRadius: 5,
                                        offset: -Offset(5, 5),
                                        color: Colors.white,
                                        inset: true),
                                    insetShadow.BoxShadow(
                                        blurRadius: 5,
                                        offset: Offset(5, 5),
                                        color: AppColors.greyInnerShadow,
                                        inset: true),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                        child: Text('Select Circle',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300))),
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: insetShadow.BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff707070),
                                        boxShadow: [
                                          insetShadow.BoxShadow(
                                              blurRadius: 1,
                                              offset: Offset(1, 1),
                                              color: AppColors.greyInnerShadow,
                                              inset: true),
                                        ],
                                      ),
                                      child: Image.asset('assets/images/check.png'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // dash border
                        SizedBox(
                          width: width,
                          height: 2,
                          child: ListView.builder(
                              itemCount: 20,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (contaxt, index) {
                                return Container(
                                  height: 2,
                                  width: 10,
                                  color: Color(
                                    0xff707070,
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //Enter Amount
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 54,
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          decoration: insetShadow.BoxDecoration(
                            borderRadius: BorderRadius.circular(36.0),
                            color: Colors.white,
                            boxShadow: [
                              insetShadow.BoxShadow(
                                  blurRadius: 15,
                                  offset: Offset(15, 15),
                                  color: Colors.black.withOpacity(0.2),
                                  inset: false),
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
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                      hintText: 'Enter Mobile Number'),
                                ),
                              ),
                              Text('CHOOSE PLAN',style: TextStyle(color: AppColors.kprimaryColor,fontSize: 11,fontWeight: FontWeight.w600),)
                            ],
                          ),
                        ),
                      Spacer(),
                        Button1(
                          text: 'Confirm',
                          onPressed: () {
                            Get.offAll(Home());
                          },
                        ),
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
