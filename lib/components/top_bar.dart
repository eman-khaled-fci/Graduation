import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants.dart';
import '../size_config.dart';
class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(50),
            height: getProportionateScreenHeight(50),
            child: TextButton(
              style: TextButton.styleFrom(
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                primary: Colors.white,
                backgroundColor: LightModeMainColor,
              ),
              onPressed: press as void Function()?,
              child: SvgPicture.asset("assets/images/undraw_blooming_re_2kc4.svg"
                  ,height: SizeConfig.screenHeight*0.06),
            ),
          ),
          Text(""+text!,textAlign: TextAlign.center, style: LightModeHeadersStyle,)

        ],
      ),

    );
  }
}
