import 'package:contacts_service/contacts_service.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:time_pe/screens/add_bank_account/view.dart';
import 'package:time_pe/screens/bank_transfer/add_upi_id.dart';
import 'package:time_pe/screens/home/view.dart';
import 'package:time_pe/screens/profile/view.dart';
import 'package:time_pe/screens/qr_scanner/view.dart';
import 'package:time_pe/screens/subaccount_create/view.dart';
import 'package:time_pe/screens/transaction_history/view.dart';
import 'package:time_pe/utils/colors.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:time_pe/widgets/bottom_navigation_button.dart';
import 'package:time_pe/widgets/button1.dart';

class BankTransfer extends StatelessWidget {
  const BankTransfer({Key? key, this.isUPIEmpty = false}) : super(key: key);
  final bool isUPIEmpty;

  @override
  Widget build(BuildContext context) {
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
                //appbar
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
                              color: AppColors.background,
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
                  height: 20,
                ),
                //Bank tansfer row
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Bank Transter',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(AddBankAccount());
                      },
                      child: Container(
                        height: 38.89,
                        width: 108.65,
                        decoration: insetShadow.BoxDecoration(
                          color: AppColors.kprimaryColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('ADD Bank',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(width: 10),
                            Container(
                              height: 20,
                              width: 20,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                              child: Text(
                                '+',
                                style: TextStyle(
                                    color: AppColors.kprimaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //Bank Account Contailer
                Expanded(
                  child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      decoration: insetShadow.BoxDecoration(
                        borderRadius: BorderRadius.circular(36.0),
                        color: AppColors.background,
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
                      child: DefaultTabController(
                        length: 2,
                        child: Scaffold(
                          backgroundColor: Colors.transparent,
                          appBar: AppBar(
                            automaticallyImplyLeading: false,
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                            toolbarHeight: 35.5,
                            bottom: TabBar(
                              unselectedLabelStyle: TextStyle(fontSize: 11),
                              labelStyle: TextStyle(fontSize: 11),
                              labelColor: AppColors.kprimaryColor,
                              unselectedLabelColor: Color(0xff7E7E7E),
                              indicatorColor: AppColors.kprimaryColor,
                              tabs: [
                                Tab(text: 'UPI'),
                                Tab(text: 'My Bank AccountS'),
                              ],
                            ),
                          ),
                          body: TabBarView(
                            children: [
                              UPI(isUPIEmpty: isUPIEmpty),
                              MyBankAccounts(),
                            ],
                          ),
                        ),
                      )),
                ),

                //bootom navigation
                SizedBox(
                  height: height * 0.15,
                  child: Row(
                    children: [
                      BottomNavigationButton(
                        imageUri: 'assets/svg_images/icon_home.svg',
                        text: 'Home',
                        onPressed: () {
                          Get.to(() => Home());
                        },
                      ),
                      BottomNavigationButton(
                        imageUri: 'assets/svg_images/icon_subaccounts.svg',
                        text: 'Sub Account',
                        onPressed: () {
                          Get.to(() => SubAccountCreate());
                        },
                      ),
                      BottomNavigationButton(
                        imageUri: 'assets/svg_images/icon_scanner.svg',
                        text: '',
                        onPressed: () {
                          Get.to(() => QRScanner());
                        },
                      ),
                      BottomNavigationButton(
                        imageUri: 'assets/svg_images/icon_transfer.svg',
                        text: 'Transfer',
                        onPressed: () {
                          // Get.to(()=>BankTransfer());
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
                ),
              ]),
        ),
      ),
    );
  }
}

class UPI extends StatelessWidget {
  UPI({required this.isUPIEmpty});
  final bool isUPIEmpty;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    if (isUPIEmpty) {
      return InkWell(
        onTap: () {},
        child: Column(
      children: [
        SizedBox(height: 15,),
        Row(
          children: [
            Container(
                alignment: Alignment.center,
                height: 56,
                width: 56,
                decoration: insetShadow.BoxDecoration(
                  color: AppColors.kprimaryColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    insetShadow.BoxShadow(
                        blurRadius: 6,
                        offset: Offset(3, 3),
                        color: Colors.black.withOpacity(0.7),
                        inset: true)
                  ],
                ),
                child: Text('KR',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.white),)),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kishor Reddy',
                  style: TextStyle(
                      fontSize: 13, fontWeight: FontWeight.normal),
                ),
                Text(
                  'XXXXXX55689',
                  style:
                      TextStyle(fontSize: 11, color: Color(0xff707070)),
                ),
              ],
            ),
            Spacer(),
            Container(
              child: Icon(Icons.more_vert, size: 30),
            )
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
              scrollDirection: Axis.horizontal,
              itemBuilder: (contaxt, index) {
                return Container(
                  height: 2,
                  width: 10,
                  color: Color(
                    0xff707070,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                );
              }),
        ),
        SizedBox(
          height: 20,
        ),
      ],
        ),
      );
    
    } else {
      return Container(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                    height: 290,
                    width: 290,
                    child: Image.asset('assets/images/empty_upi.png')),
                Positioned(
                    bottom: 0,
                    child: Text(
                      'UPI ID not yet created',
                      style: TextStyle(fontSize: 14),
                    ))
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Button1(
                  onPressed: () {
                    Get.to(() => AddUPIID());
                  },
                  text: 'Add UPI ID'),
            )
          ],
        ),
      );
    }
  }
}

class MyBankAccounts extends StatelessWidget {
 var isUPIEmpty=false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
 if (isUPIEmpty) {
      return InkWell(
        onTap: () {},
        child: Column(
      children: [
        SizedBox(height: 15,),
        Row(
          children: [
            Container(
                alignment: Alignment.center,
                height: 56,
                width: 56,
                decoration: insetShadow.BoxDecoration(
                  color: AppColors.kprimaryColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    insetShadow.BoxShadow(
                        blurRadius: 6,
                        offset: Offset(3, 3),
                        color: Colors.black.withOpacity(0.7),
                        inset: true)
                  ],
                ),
                child: Text('KR',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: AppColors.white),)),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kishor Reddy',
                  style: TextStyle(
                      fontSize: 13, fontWeight: FontWeight.normal),
                ),
                Text(
                  'XXXXXX55689',
                  style:
                      TextStyle(fontSize: 11, color: Color(0xff707070)),
                ),
              ],
            ),
            Spacer(),
            Container(
              child: Icon(Icons.more_vert, size: 30),
            )
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
              scrollDirection: Axis.horizontal,
              itemBuilder: (contaxt, index) {
                return Container(
                  height: 2,
                  width: 10,
                  color: Color(
                    0xff707070,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                );
              }),
        ),
        SizedBox(
          height: 20,
        ),
      ],
        ),
      );
    
    }else{

    }
    return Column(
      children: [
        Expanded(
          child: FutureBuilder<List<Contact>>(
              future: ContactsService.getContacts(withThumbnails: false),
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
                                  decoration: insetShadow.BoxDecoration(
                                    color: AppColors.kprimaryColor,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      insetShadow.BoxShadow(
                                          blurRadius: 6,
                                          offset: Offset(3, 3),
                                          color: Colors.black.withOpacity(0.7),
                                          inset: true)
                                    ],
                                  ),
                                  child: Image.asset(
                                      'assets/images/arrow_icon.png')),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kishor Reddy',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Text(
                                    'XXXXXX55689',
                                    style: TextStyle(
                                        fontSize: 11, color: Color(0xff707070)),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                child: Icon(Icons.more_vert, size: 30),
                              )
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
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (contaxt, index) {
                                  return Container(
                                    height: 2,
                                    width: 10,
                                    color: Color(
                                      0xff707070,
                                    ),
                                    margin: EdgeInsets.symmetric(horizontal: 5),
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
    );
  
  }
}
