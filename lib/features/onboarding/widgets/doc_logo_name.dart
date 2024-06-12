

import 'package:dochealth_app/core/utils/images_path.dart';
import 'package:dochealth_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(ImagesPath.logoIcon),
        SizedBox(width: 10.w,),
        Text(
          "DocHealth",
          style: TextStyles.font24Black700Weight,
        ),

      ],
    );
  }
}
