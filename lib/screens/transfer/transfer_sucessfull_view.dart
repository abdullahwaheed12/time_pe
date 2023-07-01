import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:time_pe/screens/authentication/faceauthentication.dart';
import 'package:time_pe/screens/authentication/logic.dart';
import 'package:time_pe/screens/home/view.dart';
import 'package:time_pe/screens/transfer/transfer.dart';
import 'package:time_pe/widgets/button1.dart';
import 'package:time_pe/widgets/custom_appbar.dart';
import 'package:time_pe/widgets/dash_border.dart';

import '../../utils/colors.dart';

class TransferSucessfullView extends StatefulWidget {
  const TransferSucessfullView({Key? key}) : super(key: key);

  @override
  State<TransferSucessfullView> createState() => _TransferSucessfullViewState();
}

class _TransferSucessfullViewState extends State<TransferSucessfullView> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        children: [
          Spacer(),
          Text.rich(TextSpan(children: [
            TextSpan(text: 'Payment of '),
            TextSpan(
                text: 'Rs.500',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
            TextSpan(text: ' to Kishor Reddy'),
          ])),
          SizedBox(
            height: 10,
          ),
          Text('SUCCESSFUL',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.kprimaryColor)),
          Text('28 Apr 2022 at 03:05 pm',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
              )),
          Container(
            height: 450,
            margin: EdgeInsets.only(
              top: 20,
            ),
            padding: EdgeInsets.all(32),
            width: width,
            decoration: insetShadow.BoxDecoration(
              color: AppColors.kprimaryColor,
              boxShadow: [
                insetShadow.BoxShadow(
                    blurRadius: 4,
                    offset: Offset(4, 4),
                    color: Colors.black.withOpacity(0.4),
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
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10,),
              child: Column(
                children: [
                  Text(
                    'Paid to',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100.26,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 37.57,
                              width: 37.57,
                              alignment: Alignment.center,
                              decoration: insetShadow.BoxDecoration(
                                color: AppColors.background,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  insetShadow.BoxShadow(
                                      blurRadius: 4,
                                      offset: Offset(4, 4),
                                      color: AppColors.greyInnerShadow,
                                      inset: true),
                                ],
                              ),
                              child: Text('KR',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.kprimaryColor)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text('Kishor Reddy',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.white)),
                                Text('855644866@axl',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                        color: AppColors.lighWhite)),
                              ],
                            ),
                            Spacer(),
                            Text('\u{20B9} 500',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.white)),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        DashBoarder(
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('Account Holders Name   :    Kishor Reddy',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.white)),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                                height: 13.18,
                                width: 13.18,
                                child: Image.asset(
                                    'assets/images/round_check_icon.png')),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DashBoarder(
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 41,
                          width: 41,
                          child: Image.asset(
                            'assets/images/book_icon.png',
                            color: AppColors.white,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Transaction Details',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Transaction ID',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: AppColors.lighWhite)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('T22256UHYJ556351',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white)),
                      Spacer(),
                      Image.asset('assets/images/copy_icon2.png'),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  DashBoarder(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 42,
                        width: 42,
                        alignment: Alignment.center,
                        decoration: insetShadow.BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.background,
                          boxShadow: [
                            insetShadow.BoxShadow(
                                blurRadius: 4,
                                offset: Offset(4, 4),
                                color: AppColors.greyInnerShadow,
                                inset: false),
                            insetShadow.BoxShadow(
                                blurRadius: 4,
                                offset: Offset(4, 4),
                                color: AppColors.greyInnerShadow,
                                inset: true),
                          ],
                        ),
                        child: InkWell(
                          onTap: (){
                            Get.offAll(()=> Home());
                          },
                          child: Image.asset(
                            'assets/images/cross2.png',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Button1(
                        color: AppColors.lightBlack,
                        onPressed: () {
                          Get.to(()=>Transfer());
                        },
                        text: 'Send Again',
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 42,
                        width: 42,
                        alignment: Alignment.center,
                        decoration: insetShadow.BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.background,
                          boxShadow: [
                            insetShadow.BoxShadow(
                                blurRadius: 4,
                                offset: Offset(4, 4),
                                color: AppColors.greyInnerShadow,
                                inset: false),
                            insetShadow.BoxShadow(
                                blurRadius: 4,
                                offset: Offset(4, 4),
                                color: AppColors.greyInnerShadow,
                                inset: true),
                          ],
                        ),
                        child: InkWell(
                          onTap: (){
                            Share.share('check out my website https://example.com', subject: 'Look what I made!');

                          },
                          child: Image.asset(
                            'assets/images/share2.png',
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
       
        ],
      )),
    );
  }
}
