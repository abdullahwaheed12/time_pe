import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'
    as insetShadow;
import 'package:get/get.dart';
import 'package:time_pe/screens/home/view.dart';
import 'package:time_pe/utils/colors.dart';

class CreateSubAcountDialog extends StatefulWidget {
  const CreateSubAcountDialog({Key? key}) : super(key: key);

  @override
  State<CreateSubAcountDialog> createState() => _CreateSubAcountDialogState();
}

class _CreateSubAcountDialogState extends State<CreateSubAcountDialog> {
  var isLinkGenerated = false;
  @override
  Widget build(BuildContext context) {
    return 
    Column(
      children: [
        Spacer(),
        Container(
          // margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: insetShadow.BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                insetShadow.BoxShadow(
                  blurRadius: 15,
                  offset: -Offset(5, 5),
                  color: Colors.grey,
                ),
                insetShadow.BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15,
                    offset: Offset(5, 5),
                    inset: true)
              ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 40,
                      decoration: insetShadow.BoxDecoration(
                        color: AppColors.kprimaryColor,
                        shape: BoxShape.circle,
                        boxShadow: [
                          insetShadow.BoxShadow(
                              blurRadius: 5,
                              offset: Offset(5, 5),
                              color: Colors.grey,
                              inset: false),
                          insetShadow.BoxShadow(
                              blurRadius: 5,
                              offset: Offset(5, 5),
                              color: Colors.black.withOpacity(0.5),
                              inset: true),
                        ],
                      ),
                      child: Image.asset('assets/images/cross2.png'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 22,
                      width: 22,
                      child: Image.asset('assets/images/icon_person.png')),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Account Operators Data ')
                ],
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Aadhar Number*'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Mobile Number*'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Name*'),
              ),
              TextField(
                decoration: InputDecoration(
                    suffixIcon: Container(
                      height: 23,
                      width: 23,
                      margin: EdgeInsets.all(10),
                      decoration: insetShadow.BoxDecoration(
                        color: AppColors.background,
                        shape: BoxShape.circle,
                        boxShadow: [
                          insetShadow.BoxShadow(
                              blurRadius: 1,
                              offset: Offset(1, 1),
                              color: Colors.grey,
                              inset: true),
                          insetShadow.BoxShadow(
                              blurRadius: 1,
                              offset: -Offset(1, 1),
                              color: Colors.black.withOpacity(0.5),
                              inset: true),
                        ],
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.kprimaryColor,
                        size: 30,
                      ),
                    ),
                    hintText: 'Relationship*'),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  isLinkGenerated=true;
                  setState(() {
                    
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 146,
                  decoration: insetShadow.BoxDecoration(
                    color: AppColors.kprimaryColor.withOpacity(isLinkGenerated ? 0.45 : 1),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      insetShadow.BoxShadow(
                          blurRadius: 5,
                          offset: Offset(5, 5),
                          color: Colors.grey,
                          inset: false),
                      insetShadow.BoxShadow(
                          blurRadius: 5,
                          offset: Offset(5, 5),
                          color: Colors.black.withOpacity(0.5),
                          inset: true),
                    ],
                  ),
                  child: Text(
                    isLinkGenerated ? 'Generated Link' : 'Generate Link',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
               SizedBox(
                height: 20,
              ),
              Visibility(
                visible: isLinkGenerated,
                child: Row(
                children: [
                  Icon(Icons.link,color: AppColors.kprimaryColor,),
                  SizedBox(width: 20,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(hintText: 'linkdda sdfjasjkdf lkajsdl'),
                    ),
                  ),
                ],
              )),
              SizedBox(
                height: 20,
              ),
              Visibility(
                visible: isLinkGenerated,
                child: InkWell(
                  onTap: () {
                    Get.to(Home());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 146,
                    decoration: insetShadow.BoxDecoration(
                      color: AppColors.kprimaryColor,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        insetShadow.BoxShadow(
                            blurRadius: 5,
                            offset: Offset(5, 5),
                            color: Colors.grey,
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
                        Text(
                          'Share Link',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 10,),
                        Image.asset('assets/images/share_fill.png')
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  
  }
}
