import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:time_pe/screens/authentication/logic.dart';
import 'package:time_pe/screens/home/view.dart';
import 'package:time_pe/widgets/custom_appbar.dart';
import 'package:time_pe/widgets/dash_border.dart';

import '../../utils/colors.dart';
import '../../widgets/button1.dart';

class Electricity3 extends StatefulWidget {
  const Electricity3({Key? key, required this.contact}) : super(key: key);
  final Contact contact;

  @override
  State<Electricity3> createState() => _Electricity3State();
}

class _Electricity3State extends State<Electricity3> {
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
                child: CustomAppBar(title: 'Electricity')),
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
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 56,
                                  width: 56,
                                  decoration: insetShadow.BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset('assets/images/billicon.png'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //name
                                    Text('BESCOM'),
                                    //sub name
                                    Text('(BESCOME MITRA)',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Color(0xff707070))),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            DashBoarder(),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        //Enter Account ID / Customer ID
                        Container(
                          height: 220,
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            padding: EdgeInsets.symmetric(horizontal: 20),
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    child: Text('Bill Details')),
                                DashBoarder(),
                                SizedBox(height: 5,),

                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, ),
                                  child: Text(
                                    'Customer Name: Santhosh Mandol',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(height: 5,),

                                 Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, ),
                                  child: Text(
                                    'Bill Date: 20-02-2022',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, ),
                                  child: Text(
                                    'Due Date: 22-02-2022',
                                    style: TextStyle(
                                      color: Color(0xffE46B22),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
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
                                      hintText:
                                          'Rs. 500'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Button1(
                          text: 'Pay',
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
