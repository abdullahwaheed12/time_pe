import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:time_pe/screens/bank_transfer/bankTransefer.dart';
import 'package:time_pe/screens/home/view.dart';
import 'package:time_pe/screens/profile/view.dart';
import 'package:time_pe/screens/qr_scanner/view.dart';
import 'package:time_pe/screens/transaction_history/view.dart';
import 'package:time_pe/utils/colors.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:time_pe/widgets/bottom_navigation_button.dart';
import 'package:time_pe/widgets/button1.dart';

import 'dialog.dart';

class SubAccountCreate extends StatelessWidget {
  const SubAccountCreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.05,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(Profile());
                          },
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 1,
                                      offset: Offset(1, 1),
                                      color: AppColors.greyInnerShadow)
                                ],
                                color: AppColors.background,
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/favicon.png'),
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                              color: AppColors.kprimaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.asset('assets/images/gift.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 26,
                          width: 26,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: AppColors.kprimaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Image.asset(
                            'assets/images/share_fill.png',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Sub Account',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (ctx) {
                                return Dialog(
                                  insetPadding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                  alignment: Alignment.bottomCenter,
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(30),
                                      right: Radius.circular(30),
                                    ),
                                  ),
                                  child: CreateSubAcountDialog(),
                                );
                              });
                        },
                        child: Container(
                          height: 35,
                          width: 162,
                          decoration: insetShadow.BoxDecoration(
                            color: AppColors.kprimaryColor,
                            borderRadius: BorderRadius.circular(20),
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
                              Text('ADD SUB ACCOUONT',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(width: 10),
                              Container(
                                height: 20,
                                width: 20,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      color: AppColors.kprimaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  //Subaccount Contailer
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    height: 518,
                    width: MediaQuery.of(context).size.width,
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
                            blurRadius: 10,
                            offset: Offset(10, 10),
                            color: AppColors.greyInnerShadow,
                            inset: true),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Sub AccountS',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 5,
                          width: width,
                          decoration: BoxDecoration(
                            color: Color(0xffC8C8C8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        SizedBox(
                            height: 80,
                            width: 115,
                            child: Image.asset('assets/images/two_person.png')),
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          'Sub account not yet added',
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Spacer(),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              'Create & Share your credit limit with your loved once.Age limit should be 15+ ',
                              textAlign: TextAlign.center,
                            )),
                        Button1(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (ctx) {
                                    return Dialog(
                                      insetPadding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      alignment: Alignment.bottomCenter,
                                      backgroundColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(30),
                                          right: Radius.circular(30),
                                        ),
                                      ),
                                      child: CreateSubAcountDialog(),
                                    );
                                  });
                            },
                            text: 'Add Sub Account ')
                      ],
                    ),
                  ),

                  //bootom navigation
                  SizedBox(
                    height: height * 0.15,
                    child: Row(
                      children: [
                        BottomNavigationButton(
                          imageUri: 'assets/svg_images/icon_home.svg',
                          text: 'Home',
                          onPressed: () {
                            Get.to(() => Home());
                          },
                        ),
                        BottomNavigationButton(
                          imageUri: 'assets/svg_images/icon_subaccounts.svg',
                          text: 'Sub Account',
                          onPressed: () {
                            // Get.to(()=>SubAccountCreate());
                          },
                        ),
                        BottomNavigationButton(
                          imageUri: 'assets/svg_images/icon_scanner.svg',
                          text: '',
                          onPressed: () {
                            Get.to(() => QRScanner());
                          },
                        ),
                        BottomNavigationButton(
                          imageUri: 'assets/svg_images/icon_transfer.svg',
                          text: 'Transfer',
                          onPressed: () {
                            Get.to(() => BankTransfer());
                          },
                        ),
                        BottomNavigationButton(
                          imageUri: 'assets/svg_images/icon_history.svg',
                          text: 'History',
                          onPressed: () {
                            Get.to(() => TransactionHistory());
                          },
                        ),
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
