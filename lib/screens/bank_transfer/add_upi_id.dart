import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:time_pe/screens/authentication/logic.dart';
import 'package:time_pe/screens/bank_transfer/bankTransefer.dart';
import 'package:time_pe/widgets/button1.dart';
import 'package:time_pe/widgets/custom_appbar.dart';

import '../../utils/colors.dart';

class AddUPIID extends StatefulWidget {
  const AddUPIID({Key? key}) : super(key: key);

  @override
  State<AddUPIID> createState() => _AddUPIIDState();
}

class _AddUPIIDState extends State<AddUPIID> {
  var isVerify = false;
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
                  child: CustomAppBar(title: 'Add UPI ID')),
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
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                      TextField(
                        decoration: InputDecoration(hintText: 'Enter UPI ID'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      isVerify
                          ? Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 39,
                                width: 50,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 7),
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
                                        blurRadius: 10,
                                        offset: Offset(10, 10),
                                        color: Colors.black.withOpacity(0.3),
                                        inset: true),
                                  ],
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  constraints: BoxConstraints(
                                    maxHeight: 20,
                                    minHeight: 20,
                                    maxWidth: 20,
                                    minWidth: 20,
                                  ),
                                  decoration: BoxDecoration(
                                      color: AppColors.black,
                                      shape: BoxShape.circle),
                                  child: Image.asset('assets/images/check.png',
                                      color: AppColors.kprimaryColor),
                                ),
                              ),
                            )
                          : Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  isVerify = true;
                                  setState(() {});
                                },
                                child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    height: 39,
                                    width: 109,
                                    alignment: Alignment.center,
                                    decoration: insetShadow.BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: AppColors.kprimaryColor,
                                      boxShadow: [
                                        insetShadow.BoxShadow(
                                            blurRadius: 5,
                                            offset: Offset(5, 5),
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            inset: false),
                                        insetShadow.BoxShadow(
                                            blurRadius: 10,
                                            offset: Offset(10, 10),
                                            color:
                                                Colors.black.withOpacity(0.3),
                                            inset: true),
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'VERIFY',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: AppColors.white,
                                              shape: BoxShape.circle),
                                          child: Image.asset(
                                              'assets/images/check.png',
                                              color: AppColors.kprimaryColor),
                                        )
                                      ],
                                    )),
                              ),
                            ),
                      Spacer(),
                      Visibility(
                          visible: isVerify,
                          child: Button1(onPressed: (){
                            Get.to(()=>BankTransfer(isUPIEmpty: true,));
                          }, text: 'Save'))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
