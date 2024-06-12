import 'package:dochealth_app/core/theming/text_style.dart';
import 'package:dochealth_app/core/utils/colors_code.dart';
import 'package:dochealth_app/core/utils/images_path.dart';
import 'package:dochealth_app/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageTextWidget extends StatelessWidget {
  const DoctorImageTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgPicture.asset(ImagesPath.logoIconBack),
      Container(
        foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  ColorsCode.white,
                  ColorsCode.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14, 0.5])),
        child: Image.asset(ImagesPath.doctorImage),
      ),
       Positioned(
        bottom: 30,
        left: 0,
        right: 0,
        child: Text(
          StringsText.onBoardingHeadLine,
          textAlign: TextAlign.center,
          style: TextStyles.font32BlueBold.copyWith(
            height: 1.4,
          ),
        ),
      ),
    ]);
  }
}
