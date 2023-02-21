import 'package:flutter/material.dart';
import 'package:graduation/screens/edit_profile/edit_profile_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({Key? key, this.name, this.description, this.image})
      : super(key: key);
  final String? name;
  final String? description;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: SizedBox(
                    width: getProportionateScreenWidth(80),
                    height: getProportionateScreenHeight(80),
                    child: Image.asset(image!),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                //    Text(name! + "\n" + description!),
                //

Text.rich(

  TextSpan(
    text: name!+"\n",
    style: ProfileUserName,
    children:  <InlineSpan>[
  TextSpan(
  text: description!,
    style: Profiledescreption,
  )]


),




)





                    //Text(description!)
                  ],
                )
              ],
            ),
            TextButton(
              // style: TextButton.styleFrom(
              //   shape:
              //   RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              //   primary: Colors.white,
              //   backgroundColor: LightModeMainColor,
              // ),
              onPressed: () {
                Navigator.pushNamed(context, EditProfile.routeName);
              },
              child: Image.asset("assets/icons/edit_pen.png",
                  height: SizeConfig.screenHeight * 0.035),
            ),
          ],
        ),
      ),
    );
  }
}
