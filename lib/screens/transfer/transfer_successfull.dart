import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:time_pe/utils/colors.dart';
import 'package:time_pe/widgets/button1.dart';

import 'transfer_sucessfull_view.dart';
class TransferSucessfull extends StatelessWidget {
  const TransferSucessfull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Text.rich(TextSpan(
                children: [
                  TextSpan(text: 'Payment of '),
                  TextSpan(text: 'Rs.500',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),
                  TextSpan(text: ' to Kishor Reddy'),
                ]
              )),
              SizedBox(
                height: 10,
              ),
              Text('SUCCESSFUL',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,color: AppColors.kprimaryColor)),
              Spacer(),
             
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
                      child: Image.asset('assets/images/cross2.png',color: Colors.black,),
                    ),
                    SizedBox(width: 30,),
                      Expanded(child: Button1(onPressed: (){
                        Get.to(TransferSucessfullView());
                      },text: 'View',))
                    
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
