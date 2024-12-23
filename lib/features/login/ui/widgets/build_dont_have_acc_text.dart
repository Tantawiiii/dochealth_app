import 'package:dochealth_app/core/helpers/extentions.dart';
import 'package:dochealth_app/core/utils/strings.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routers.dart';
import '../../../../core/theming/text_style.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: StringsText.txtDontHaveAcc,
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: StringsText.txtSignUp,
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signupScreen);
              },
          ),
        ],
      ),
    );
  }
}
