
import 'package:dochealth_app/core/theming/text_style.dart';
import 'package:dochealth_app/core/utils/colors_code.dart';
import 'package:dochealth_app/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';

class BuildOrSignInMediaAccounts extends StatelessWidget {
  const BuildOrSignInMediaAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 90.w, // Width of the line
          height: 1, // Height of the line
          color: ColorsCode.lightGray, // Color of the line
        ),
        horizontalSpace(4),
        Text(
          StringsText.txtOrSignMedia,
          style: TextStyles.font13GrayNormal,
        ),
        horizontalSpace(4),
        Container(
          width: 90.w, // Width of the line
          height: 1, // Height of the line
          color: ColorsCode.lightGray, // Color of the line
        ),

      ],
    );
  }
}
