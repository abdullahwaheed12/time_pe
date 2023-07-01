import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_pe/screens/transfer/transfer.dart';

import 'package:time_pe/widgets/custom_appbar.dart';

class QRScanner extends StatelessWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1)).then((value) {
        Get.to(Transfer());
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                alignment: Alignment.topCenter,
                padding:
                    const EdgeInsets.symmetric(vertical: 36, horizontal: 36),
                child: CustomAppBar(title: 'Pay')),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 53,
              width: 53,
              child: Image.asset('assets/images/qr_scanner_icon.png'),
            ),
            Text(
              'Scan QR Code',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
            SizedBox(
                height: 307,
                width: 307,
                child: Image.asset('assets/images/scanner_image.png'))
          ],
        ),
      ),
    );
  }
}
