import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:time_pe/screens/verification/view.dart';
import 'package:time_pe/utils/colors.dart';
import 'package:time_pe/widgets/custom_appbar.dart';

class SubAccount extends StatelessWidget {
  const SubAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Container(
            height: height,
            alignment: Alignment.center,
            child: CustomScrollView(slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //appbar
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: CustomAppBar(title: 'Sub Account'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Enter below details & help us to create Sub Accounts',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    //1
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'How many friends you have? & Do you want them to be secured?',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 11),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 52,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
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
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                    hintText: 'Eg: 10'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //2
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'What could be you house hold income dude?',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 11),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 52,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
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
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                    hintText: 'Eg: 85000'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //3
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'What is your monthly income Bro?',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 11),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 52,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
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
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                    hintText: 'Eg: 15000'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //4
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'No. of persons studying in your family?',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 11),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 52,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
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
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                    hintText: 'Eg: 5'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //5
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'No. of your family members?',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 11),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 52,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
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
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                    hintText: 'Eg: 8'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Spacer(),
                    //submit button
                    SizedBox(
                      height: 59,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(VerificationSuccessfull());
                          },
                          child: Container(
                              margin: EdgeInsets.symmetric(vertical: 5),
                              padding: EdgeInsets.symmetric(horizontal: 10),
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
                              child: Text('Submit',
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
