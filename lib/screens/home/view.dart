import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:time_pe/screens/authentication/authentication.dart';
import 'package:time_pe/screens/bank_transfer/bankTransefer.dart';
import 'package:time_pe/screens/profile/view.dart';
import 'package:time_pe/screens/qr_scanner/view.dart';
import 'package:time_pe/screens/refer_earn/view.dart';
import 'package:time_pe/screens/reward/view.dart';
import 'package:time_pe/screens/subaccount_create/dialog.dart';
import 'package:time_pe/screens/subaccount_create/view.dart';
import 'package:time_pe/screens/transaction_history/view.dart';
import 'package:time_pe/screens/transfer/transfer.dart';
import 'package:time_pe/utils/colors.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:time_pe/widgets/bottom_navigation_button.dart';

import '../electricity/view1.dart';
import '../mobile_recharge/recharge1.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<PermissionStatus> _getContactPermission() async {
    PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.permanentlyDenied) {
      PermissionStatus permissionStatus = await Permission.contacts.request();
      return permissionStatus;
    } else {
      return permission;
    }
  }

  void _handleInvalidPermissions(PermissionStatus permissionStatus) {
    if (permissionStatus == PermissionStatus.denied) {
      final snackBar = SnackBar(content: Text('Access to contact data denied'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (permissionStatus == PermissionStatus.permanentlyDenied) {
      final snackBar =
          SnackBar(content: Text('Contact data not available on device'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _askPermissions(e) async {
    PermissionStatus permissionStatus = await _getContactPermission();
    if (permissionStatus == PermissionStatus.granted) {
    } else {
      _handleInvalidPermissions(permissionStatus);
    }
  }

  @override
  void initState() {
    super.initState();
    _askPermissions('');
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Appbar
                  SizedBox(
                    height: 56,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(Profile());
                          },
                          child: Container(
                            height: 47,
                            width: 47,
                            decoration: BoxDecoration(
                                color: AppColors.background,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              'assets/images/profile_image_crop.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 26,
                          width: 26,
                          decoration: BoxDecoration(
                              color: AppColors.kprimaryColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: InkWell(
                              onTap: () {
                                Get.to(Reward());
                              },
                              child: Image.asset('assets/images/gift.png')),
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
                          child: InkWell(
                            onTap: () {
                              Get.to(ReferEarn());
                            },
                            child: Image.asset(
                              'assets/images/share_fill.png',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  //Text
                  SizedBox(
                    height: 50,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Hello Deepak!',
                            style: TextStyle(color: AppColors.kprimaryColor),
                          ),
                          Text.rich(TextSpan(
                              text: 'Get timepe Limit Upto :',
                              style: TextStyle(fontSize: 18),
                              children: [
                                TextSpan(
                                    text: '\u{20B9} 30,000',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: AppColors.kprimaryColor))
                              ])),
                        ]),
                  ),

                  //Container
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 5),
                    padding: EdgeInsets.all(16),
                    height: 190,
                    width: width,
                    decoration: insetShadow.BoxDecoration(
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
                      gradient: LinearGradient(
                          colors: [
                            AppColors.kprimaryColorLight,
                            AppColors.kprimaryColor
                          ],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/clock.png'))),
                            )),
                        Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  child: Text(
                                    '"Ab sab hoga timepe"',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "You're just a step away to get Credit Limit",
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(Authentication());
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top: 10, left: 20, right: 20),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: insetShadow.BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          boxShadow: [
                                            insetShadow.BoxShadow(
                                                color:
                                                    AppColors.greyInnerShadow,
                                                blurRadius: 4,
                                                offset: Offset(4, 4),
                                                inset: true)
                                          ]),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Apply Now",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  //Recharge
                  Recharge(),
                  //Heading
                  Heading(),
                  BottomNavigationSection()
                  //bootom navigation
                ]),
          ),
        ),
      ),
    );
  }
}

class Recharge extends StatelessWidget {
  const Recharge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 131,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recharge',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
          ),
          SizedBox(
            height: 110,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RechargeItem(
                    imageUri: 'assets/svg_images/icon_mobile.svg',
                    text: 'Recharge',
                    onPressed: () {
                      Get.to(() => MobileRecharge1());
                    },
                  ),
                  RechargeItem(
                    imageUri: 'assets/svg_images/icon_food.svg',
                    text: 'Food',
                    onPressed: () {},
                  ),
                  RechargeItem(
                      imageUri: 'assets/svg_images/icon_shop.svg',
                      text: 'Shop',
                      onPressed: () {}),
                  RechargeItem(
                    imageUri: 'assets/svg_images/icon_electricity.svg',
                    text: 'Electricity',
                    onPressed: () {
                      Get.to(() => Electricity1());
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Heading',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                return Container(
                  height: 150,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/big_sale.png'))),
                  margin: EdgeInsets.all(10),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavigationSection extends StatelessWidget {
  const BottomNavigationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92,
      child: Row(
        children: [
          BottomNavigationButton(
            imageUri: 'assets/svg_images/icon_home.svg',
            text: 'Home',
            onPressed: () {},
          ),
          BottomNavigationButton(
            imageUri: 'assets/svg_images/icon_subaccounts.svg',
            text: 'Sub Account',
            onPressed: () {
              Get.to(() => SubAccountCreate());
            },
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  height: 55,
                  width: 60,
                  margin: EdgeInsets.all(5),
                  child: NeumorphicButton(
                    onPressed: () {
                      Get.to(QRScanner());
                    },
                    style: NeumorphicStyle(
                      color: AppColors.innerShadow,
                      depth: -10,
                      shadowDarkColor: AppColors.shadowDarkColor,
                      shadowLightColor: AppColors.shadowLightColor,
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(8)),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child:
                        SvgPicture.asset('assets/svg_images/icon_scanner.svg'),
                  ),
                ),
                Text(
                  "Pay",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
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
    );
  }
}

class RechargeItem extends StatelessWidget {
  const RechargeItem(
      {Key? key,
      required this.imageUri,
      required this.text,
      required this.onPressed})
      : super(key: key);
  final String text;
  final String imageUri;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 69.54,
      width: 73.44,
      child: NeumorphicButton(
          onPressed: onPressed,
          style: NeumorphicStyle(
            color: AppColors.innerShadow,
            depth: -10,
            shadowDarkColor: AppColors.shadowDarkColor,
            shadowLightColor: AppColors.shadowLightColor,
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 23.7,
                  width: 14.34,
                  child: SvgPicture.asset(imageUri)),
              SizedBox(
                height: 5,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 7),
              ),
            ],
          )),
    );
  }
}
