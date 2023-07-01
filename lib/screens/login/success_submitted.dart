
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_pe/screens/home/view.dart';
import 'package:time_pe/utils/colors.dart';

class SuccessfullSubmitted extends StatefulWidget {
  const SuccessfullSubmitted({Key? key}) : super(key: key);

  @override
  State<SuccessfullSubmitted> createState() => _SuccessfullSubmittedState();
}

class _SuccessfullSubmittedState extends State<SuccessfullSubmitted>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
    _animationController.forward();
    _animationController.addListener(() {
      setState(() {
        
      });
     });
  }

  @override
  Widget build(BuildContext context) {
  
    Future.delayed(Duration(seconds: 2)).then(
      (value) {
        Get.to(Home());
      },
    );
    
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: ScaleTransition(
                scale: _animation,
                child: Image.asset('assets/images/thumb_print.png'),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Submitted', style: TextStyle(fontSize: 16)),
                  Text(
                    'Successfully',
                    style: TextStyle(
                        color: AppColors.kprimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
