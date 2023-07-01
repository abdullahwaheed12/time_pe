// ignore_for_file: unused_import

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_pe/route_generator.dart';
import 'package:time_pe/screens/authentication/logic.dart';
import 'package:time_pe/screens/home/view.dart';
import 'package:time_pe/screens/login/login.dart';
import 'package:time_pe/screens/mobile_recharge/logic.dart';
import 'package:time_pe/screens/mobile_recharge/recharge1.dart';
import 'package:time_pe/screens/onboarding/view.dart';
import 'package:time_pe/screens/profile/view.dart';
import 'package:time_pe/screens/qr_scanner/view.dart';
import 'package:time_pe/screens/splash/view.dart';
import 'package:time_pe/screens/transaction_history/view.dart';
import 'package:time_pe/screens/transfer/transfer.dart';
import 'package:time_pe/screens/transfer/transfer_sucessfull_view.dart';
import 'package:time_pe/utils/colors.dart';

import 'screens/authentication/faceauthentication.dart';
import 'screens/authentication/personal_info.dart';
import 'screens/bank_transfer/bankTransefer.dart';
import 'screens/electricity/view1.dart';
import 'screens/electricity/view3.dart';
import 'screens/home/numorphic.dart';
import 'screens/refer_earn/view.dart';
import 'screens/reward/view.dart';
import 'screens/subaccount_create/view.dart';
import 'screens/verification/view.dart';
import 'screens/verification/view2.dart';

void main() {
  Get.put(AuthenticationController());
  Get.put(MobileRechargeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time Pe',
      getPages: routes(),
      theme: ThemeData(
          textTheme: TextTheme(
            bodyMedium: GoogleFonts.poppins(fontSize: 13),
          ),
          scaffoldBackgroundColor: AppColors.background,
          primaryColor: Color(0xff34C6C8),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(background: Color(0xffEBEFF2))),
      home: BankTransfer(),
    );
  }
}
