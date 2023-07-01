import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:time_pe/screens/sub_account/view.dart';
import 'package:time_pe/widgets/custom_appbar.dart';

import '../../utils/colors.dart';

class SetUpProfile extends StatelessWidget {
  const SetUpProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(child: 
      Column(
        children: [
           Container(
                  alignment: Alignment.topCenter,
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 36),
                  child: 
                  CustomAppBar(title: 'Setup Profile')
                ),
                Text('timepe limit activated',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                Image.asset('assets/images/setup_profile.png'),
                SizedBox(
                  height: 94,
                  width: width,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                       child:  SvgPicture.asset('assets/svg_images/dialog.svg'),
                      ),
                      Align(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Dude we need more info to secure \n your  family members and friends."),
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Get.to(SubAccount());
                  },
                  child: Container(
                            height: 54,
                            width: 57,
                            alignment: Alignment.center,
                            decoration: insetShadow.BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.kprimaryColor,
                              boxShadow:[
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
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                ),
           Expanded(
             child: Padding(
               padding:
                        const EdgeInsets.symmetric(vertical: 18, horizontal: 36),
               child: Align(
                alignment: Alignment.bottomLeft,
                 child: Row(children: [
                  Text('Skip'), Icon(Icons.arrow_forward_ios)
                 ],),
               ),
             ),
           )            
        ],
      )
      ),
    );
  }
}