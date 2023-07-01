import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:time_pe/widgets/custom_appbar.dart';
import 'package:time_pe/widgets/dash_border.dart';

class Reward extends StatelessWidget {
  const Reward({Key? key}) : super(key: key);

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
                    "Rewards",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  )),
              Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 325,
                  child: SvgPicture.asset('assets/svg_images/reward.svg')),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: DashBoarder(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.only(left: 35),
                  child: Text(
                    "My  Rewards",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffB8B8B8),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 107,
                        decoration: BoxDecoration(
                            color: Color(0xff34C6C8).withOpacity(0.28),
                            shape: BoxShape.circle),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '\u{20B9} 50',
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold),
                            ),
                            Text('Date : 10-12-2020',
                                style: TextStyle(
                                    fontSize: 8, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: Container(
                      height: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffB8B8B8),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 107,
                        decoration: BoxDecoration(
                            color: Color(0xff34C6C8).withOpacity(0.28),
                            shape: BoxShape.circle),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '\u{20B9} 50',
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold),
                            ),
                            Text('Date : 10-12-2020',
                                style: TextStyle(
                                    fontSize: 8, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    )),
                    SizedBox(width: 10),
                    Expanded(
                        child: Container(
                      height: 107,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffB8B8B8),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 107,
                        decoration: BoxDecoration(
                            color: Color(0xff34C6C8).withOpacity(0.28),
                            shape: BoxShape.circle),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '\u{20B9} 50',
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.bold),
                            ),
                            Text('Date : 10-12-2020',
                                style: TextStyle(
                                    fontSize: 8, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
              ),
           SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
