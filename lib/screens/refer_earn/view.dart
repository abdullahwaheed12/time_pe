import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:time_pe/utils/colors.dart';
import 'package:time_pe/widgets/custom_appbar.dart';
import 'package:time_pe/widgets/dash_border.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;

class ReferEarn extends StatelessWidget {
  const ReferEarn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 36),
                  child: CustomAppBar(title: '')),
              Container(
                  padding: EdgeInsets.only(left: 45),
                  child: Text(
                    "Refer & Earn",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  height: 325,
                  width: MediaQuery.of(context).size.width,
                  child: SvgPicture.asset('assets/svg_images/refer_earn.svg')),
              SizedBox(
                height: 10,
              ),
              //share filed
              Container(
                height: 63,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: EdgeInsets.only(
                  left: 10,
                ),
                decoration: insetShadow.BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      insetShadow.BoxShadow(
                          blurRadius: 10,
                          offset: Offset(3, 3),
                          inset: true,
                          color: Colors.grey),
                      insetShadow.BoxShadow(
                          blurRadius: 3,
                          offset: -Offset(3, 3),
                          inset: true,
                          color: Colors.white),
                    ]),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/images/copy.png'),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'TP22557T',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Container(
                      width: 82,
                      height: 63,
                      decoration: insetShadow.BoxDecoration(
                          color: AppColors.kprimaryColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          boxShadow: [
                            insetShadow.BoxShadow(
                                blurRadius: 10,
                                offset: Offset(3, 3),
                                inset: true,
                                color: Colors.grey),
                            insetShadow.BoxShadow(
                                blurRadius: 3,
                                offset: -Offset(3, 3),
                                inset: true,
                                color: Colors.white),
                          ]),
                      child: Image.asset('assets/images/share.png'),
                    )
                  ],
                ),
              ),
              //my reward
              Container(
                  padding: EdgeInsets.only(left: 35),
                  child: Text(
                    "My  Rewards",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  )),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: DashBoarder(),
              ),
              //reward 1
              Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 43,
                          width: 43,
                          decoration: insetShadow.BoxDecoration(
                              color: Color(0xffFF8D48),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                insetShadow.BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(3, 3),
                                    inset: true,
                                    color: Colors.grey),
                                insetShadow.BoxShadow(
                                    blurRadius: 3,
                                    offset: -Offset(3, 3),
                                    inset: true,
                                    color: Colors.white),
                              ]),
                          child: Image.asset("assets/images/arrow_icon_down.png"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text('Deepxxx45956',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500)),
                            Text('Referral Bonus',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey)),
                          ],
                        ),
                        Spacer(),
                        Text(
                          '\u{20B9} 50',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Referral ID: 1565649',
                          style: TextStyle(fontSize: 10),
                        ),
                        Spacer(),
                        Text(
                          '12-02-2022 10:02',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: DashBoarder(),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: DashBoarder(),
              ),
              //reward 2
              Container(
                margin: EdgeInsets.only(right: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 43,
                          width: 43,
                          decoration: insetShadow.BoxDecoration(
                              color: Color(0xffFF8D48),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                insetShadow.BoxShadow(
                                    blurRadius: 10,
                                    offset: Offset(3, 3),
                                    inset: true,
                                    color: Colors.grey),
                                insetShadow.BoxShadow(
                                    blurRadius: 3,
                                    offset: -Offset(3, 3),
                                    inset: true,
                                    color: Colors.white),
                              ]),
                          child: Image.asset("assets/images/arrow_icon_down.png"),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text('Deepxxx45956',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500)),
                            Text('Referral Bonus',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey)),
                          ],
                        ),
                        Spacer(),
                        Text(
                          '\u{20B9} 50',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Referral ID: 1565649',
                          style: TextStyle(fontSize: 10),
                        ),
                        Spacer(),
                        Text(
                          '12-02-2022 10:02',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: DashBoarder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
