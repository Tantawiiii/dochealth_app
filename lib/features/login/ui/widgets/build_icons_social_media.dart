import 'package:dochealth_app/core/utils/images_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';

class BuildIconsSocialMedia extends StatelessWidget {
  const BuildIconsSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          ImagesPath.googleIcon,
          width: 56,
        ),
        horizontalSpace(32),
        SvgPicture.asset(
          ImagesPath.facebookIcon,
          width: 56,
        ),
        horizontalSpace(32),
        SvgPicture.asset(
          ImagesPath.appleIcon,
          width: 56,
        ),
      ],
    );
  }
}
