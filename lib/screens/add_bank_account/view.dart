import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:time_pe/screens/authentication/logic.dart';
import 'package:time_pe/widgets/custom_appbar.dart';

import '../../utils/colors.dart';

class AddBankAccount extends StatelessWidget {
  const AddBankAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AuthenticationController());
    var width = MediaQuery.of(context).size.width;

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
                      const EdgeInsets.symmetric(vertical: 36, horizontal: 36),
                  child: CustomAppBar(title: 'Add Bank Account')),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal:36),
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 22,
                                width: 22,
                                child: Image.asset('assets/images/house_icon.png')),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Add Bank Details',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Holders Name',
                              hintStyle: TextStyle(fontSize: 11)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Account Number',
                              hintStyle: TextStyle(fontSize: 11)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Confirm Account Number',
                              hintStyle: TextStyle(fontSize: 11)),
                        ),
                         SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'IFSC Code',
                            hintStyle: TextStyle(fontSize: 11),
                            suffixIcon: Container(
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  'FIND',
                                  style: TextStyle(
                                      fontSize: 9,
                                      color: AppColors.kprimaryColor,
                                      fontWeight: FontWeight.w500),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 59,
                          width: width,
                          decoration: insetShadow.BoxDecoration(
                            color: AppColors.kprimaryColor,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              insetShadow.BoxShadow(
                                  blurRadius: 5,
                                  offset: Offset(5, 5),
                                  color: AppColors.grey,
                                  inset: false),
                              insetShadow.BoxShadow(
                                  blurRadius: 5,
                                  offset: Offset(5, 5),
                                  color: AppColors.black.withOpacity(0.5),
                                  inset: true),
                            ],
                          ),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                       
                        
                       
                      ],
                    ),
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
