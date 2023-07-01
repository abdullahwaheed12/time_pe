import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:time_pe/utils/colors.dart';

class BottomNavigationButton extends StatelessWidget {
  const BottomNavigationButton({Key? key,required this.imageUri,required this.text,required this.onPressed}) : super(key: key);
  final String text;
  final String imageUri;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(5),
        height: 65,
        width: 65,
        child: NeumorphicButton(
            margin: EdgeInsets.only(top: 12),
            onPressed: onPressed,
            style: NeumorphicStyle(
              color: AppColors.white,
              depth: -10,
              shadowDarkColor: AppColors.shadowDarkColor,
              shadowLightColor: AppColors.shadowLightColor,
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
            ),
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(imageUri),
                Text(
                  text,
                  style: TextStyle(fontSize: 7),
                ),
              ],
            )),
      ),
    );
  }
}
