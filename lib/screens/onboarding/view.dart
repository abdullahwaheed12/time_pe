
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:time_pe/screens/login/login.dart';
import 'package:time_pe/utils/colors.dart';
import 'package:time_pe/widgets/button1.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> with TickerProviderStateMixin{

   late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween<double>(begin: 1, end: 1).animate(_animationController);
    _animationController.forward();
    _animationController.addListener(() {
      setState(() {
        
      });
     });
  }
  int _current = 0;

  final CarouselController _controller = CarouselController();

  List<int> list = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(33.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                top: -80,
                right: -50,
                child: SizedBox(
                    height: 262.94,
                    width: 191.8,
                    child: Image.asset('assets/images/thumb_print.png')),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CarouselSlider(
                    items: [
                      Column(
                        children: [
                          SizedBox(
                              height: 200,
                              child: ScaleTransition(
                                scale: _animation,
                                child: SvgPicture.asset(
                                    'assets/svg_images/onboarding1.svg'),
                              )),
                          SizedBox(
                            height: 100,
                          ),
                          Text(
                            'Your financal security is our fist priority',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              height: 200,
                              child: SvgPicture.asset(
                                  'assets/svg_images/onboarding2.svg')),
                          SizedBox(
                            height: 100,
                          ),
                          Text(
                            'Secure Your Todays With Awsome Fund Limit',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              child: SvgPicture.asset(
                                  'assets/svg_images/onboarding3.svg')),
                          SizedBox(
                            height: 100,
                          ),
                          Text(
                            'Create subaccounts for your loved once',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              height: 200,
                              child: SvgPicture.asset(
                                  'assets/svg_images/onboarding4.svg')),
                          SizedBox(
                            height: 100,
                          ),
                          Text(
                            'Repay With Flexibility',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                    carouselController: _controller,
                    options: CarouselOptions(
                        height: 400,
                        reverse: false,
                        autoPlayInterval: Duration(seconds: 2),
                        enableInfiniteScroll: false,
                        viewportFraction: 1,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) {
                          if (index == 3) {
                            Future.delayed(Duration(seconds: 1)).then((value) {
                              Get.to(Login());
                            });
                          }
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: list.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: AppColors.black),
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? AppColors.white
                                      : AppColors.kprimaryColor)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.0)),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Button1(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Login();
                          },
                        ));
                      },
                      text: 'Get Started')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
