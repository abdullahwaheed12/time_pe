import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:time_pe/screens/onboarding/view.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    var tween = Tween<double>(begin: 0, end: 1);
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);
    _animation = tween.animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn));
    _animationController.addStatusListener((status) {});
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return OnBoarding();
          },
        ));
      },
    );
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SvgPicture.asset('assets/svg_images/log_without_thumb.svg'),
            Positioned(
                top: 20,
                left: 20,
                child: ScaleTransition(
                    scale: _animation,
                    child: SvgPicture.asset('assets/svg_images/thumb.svg'))),
          ],
        ),
      ),
    );
  }
}
