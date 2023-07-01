import 'package:contacts_service/contacts_service.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:time_pe/screens/bank_transfer/bankTransefer.dart';
import 'package:time_pe/screens/home/view.dart';
import 'package:time_pe/screens/profile/view.dart';
import 'package:time_pe/screens/qr_scanner/view.dart';
import 'package:time_pe/screens/subaccount_create/view.dart';
import 'package:time_pe/utils/colors.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:time_pe/widgets/bottom_navigation_button.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
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
                              color: AppColors. background,
                              image: DecorationImage(
                                image: AssetImage('assets/images/favicon.png'),
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
                      'Transactions',
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                  ],
                ),
                
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    height: 518,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: insetShadow.BoxDecoration(
                      borderRadius: BorderRadius.circular(36.0),
                      color: AppColors. background,
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
                        Expanded(
                          child: FutureBuilder<List<Contact>>(
                              future: ContactsService.getContacts(
                                  withThumbnails: false),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                                var contacts = snapshot.data!;
                                return ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: contacts.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        // Get.to(MobileRecharge2(contact: contact));
                                      },
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                  alignment: Alignment.center,
                                                  height: 56,
                                                  width: 56,
                                                  decoration:
                                                      insetShadow.BoxDecoration(
                                                    color: AppColors.kprimaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    boxShadow: [
                                                      insetShadow.BoxShadow(
                                                          blurRadius: 6,
                                                          offset: Offset(3, 3),
                                                          color: Colors.black
                                                              .withOpacity(0.7),
                                                          inset: true)
                                                    ],
                                                  ),
                                                  child: Image.asset(
                                                      'assets/images/arrow_icon.png')),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Mobile Recharge',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    'Trnx ID: 1565649',
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xff707070)),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '\u{20B9} 500',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  Text(
                                                    '12-02-2022 10:02',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color:
                                                            Color(0xff707070)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                         
                                          SizedBox(
                                            height: 30,
                                          ),
                                          SizedBox(
                                            width: width,
                                            height: 2,
                                            child: ListView.builder(
                                                itemCount: 20,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder: (contaxt, index) {
                                                  return Container(
                                                    height: 2,
                                                    width: 10,
                                                    color: Color(
                                                      0xff707070,
                                                    ),
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5),
                                                  );
                                                }),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              }),
                        ),
                      ],
                    ),
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
                            onPressed: (){

                              Get.to(()=>Home());

                            },
                            ),
                        BottomNavigationButton(
                            imageUri: 'assets/svg_images/icon_subaccounts.svg',
                            text: 'Sub Account',
                            onPressed: (){
                              Get.to(()=>SubAccountCreate());
                            },
                            ),
                         BottomNavigationButton(
                            imageUri: 'assets/svg_images/icon_scanner.svg',
                            text: '',
                            onPressed: (){
                                    Get.to(()=>QRScanner());
                            },
                            ),   
                         BottomNavigationButton(
                            imageUri: 'assets/svg_images/icon_transfer.svg',
                            text: 'Transfer',
                            onPressed: (){
                              Get.to(()=>BankTransfer());
                            },
                            ),
                        BottomNavigationButton(
                            imageUri: 'assets/svg_images/icon_history.svg',
                            text: 'History',
                            onPressed: (){
                              // Get.to(()=>TransactionHistory());
                            },                            
                            ),
                      ],
                    ),
                  ),
              
              ]),
        ),
      ),
    );
  }
}
