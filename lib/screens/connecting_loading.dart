import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:time_pe/screens/transfer/transfer_successfull.dart';
import 'package:time_pe/utils/colors.dart';
class ConnectingLoading extends StatelessWidget {
  const ConnectingLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((value) {
Get.to(TransferSucessfull());
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width,),
              Spacer(),
              SpinKitThreeBounce(
                color: AppColors.lightBlueLoadingAnimation,
              ),
              SizedBox(
                height: 20,
              ),
              Text('Connecting Securely',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              Spacer(),
             
              Text('Please do not press back or close the app',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
            ],
          ),
        ),
      ),
    );
  }
}
