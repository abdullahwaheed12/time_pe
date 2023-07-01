import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:time_pe/utils/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            alignment: Alignment.center,
            height: height,
            //alternative solution of singlechild scrollview and listview
            //https://stackoverflow.com/questions/56326005/how-to-use-expanded-in-singlechildscrollview#:~:text=To%20use%20Expanded%20with%20SingleChildScrollView,the%20height%20of%20the%20screen.
            child: CustomScrollView(slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Profile',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 19),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 42,
                            width: 42,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 8),
                            decoration: insetShadow.BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                insetShadow.BoxShadow(
                                    blurRadius: 4,
                                    offset: -Offset(4, 4),
                                    color: Colors.white,
                                    inset: true),
                                insetShadow.BoxShadow(
                                    blurRadius: 4,
                                    offset: Offset(4, 4),
                                    color: AppColors.greyInnerShadow,
                                    inset: true),
                              ],
                            ),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: AppColors.kprimaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    //profile pic
                    Container(
                      height: 145,
                      width: width,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          insetShadow.BoxShadow(
                              blurRadius: 6,
                              offset: -Offset(6, 6),
                              color: Colors.white,
                              inset: true),
                          insetShadow.BoxShadow(
                              blurRadius: 6,
                              offset: Offset(6, 6),
                              color: AppColors.greyInnerShadow,
                              inset: true),
                        ],
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 100,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 1,
                                            offset: Offset(1, 1),
                                            color: AppColors.greyInnerShadow)
                                      ],
                                      color: AppColors.background,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          right: 0,
                                          top: 0,
                                          child: Container(
                                              height: 22,
                                              width: 22,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: AppColors
                                                          .kprimaryColor)),
                                              child: Image.asset(
                                                  'assets/images/icon_camera.png'))),
                                      Image.asset(
                                          'assets/images/profile_image_crop.png'),
                                    ],
                                  )),
                              Text('Kishor Raddy'),
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset('assets/images/icon_security.png'),
                              Text(
                                'Verified',
                                style: TextStyle(fontSize: 9),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //Email
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 52,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: AppColors.background,
                        boxShadow: [
                          insetShadow.BoxShadow(
                              blurRadius: 3,
                              offset: -Offset(3, 3),
                              color: Colors.white,
                              inset: true),
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
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Image.asset(
                                      'assets/images/icon_mail.png'),
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                  hintText: 'Email'),
                            ),
                          ),
                          Text(
                            'EDIT',
                            style: TextStyle(
                                color: AppColors.kprimaryColor,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),

                    //Mobile Number
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 52,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: AppColors.background,
                        boxShadow: [
                          insetShadow.BoxShadow(
                              blurRadius: 3,
                              offset: -Offset(3, 3),
                              color: Colors.white,
                              inset: true),
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
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Image.asset(
                                      'assets/images/icon_mobile.png'),
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                  hintText: 'Mobile Number'),
                            ),
                          ),
                          Text(
                            'EDIT',
                            style: TextStyle(
                                color: AppColors.kprimaryColor,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),

                    //Chat
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 52,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: AppColors.background,
                        boxShadow: [
                          insetShadow.BoxShadow(
                              blurRadius: 3,
                              offset: -Offset(3, 3),
                              color: Colors.white,
                              inset: true),
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
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Image.asset(
                                      'assets/images/icon_chat.png'),
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                  hintText: 'Chat'),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, size: 18),
                        ],
                      ),
                    ),

                    //Contact Us
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 52,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: AppColors.background,
                        boxShadow: [
                          insetShadow.BoxShadow(
                              blurRadius: 3,
                              offset: -Offset(3, 3),
                              color: Colors.white,
                              inset: true),
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
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Image.asset(
                                      'assets/images/icon_phone_call.png'),
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                  hintText: 'Contact Us'),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, size: 18),
                        ],
                      ),
                    ),
                    //Terms & Condition
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 52,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: AppColors.background,
                        boxShadow: [
                          insetShadow.BoxShadow(
                              blurRadius: 3,
                              offset: -Offset(3, 3),
                              color: Colors.white,
                              inset: true),
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
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Image.asset(
                                      'assets/images/icon_terms_conditions.png'),
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                  hintText: 'Terms & Condition'),
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, size: 18),
                        ],
                      ),
                    ),
                    Spacer(),
                    //Logout
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      padding: EdgeInsets.symmetric(horizontal: 10),
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
                              blurRadius: 10,
                              offset: Offset(10, 10),
                              color: Colors.black.withOpacity(0.3),
                              inset: true),
                        ],
                      ),
                      height: 46,
                      width: 194,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.logout,
                            color: AppColors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Logout',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white),
                          ),
                        ],
                      ),
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
