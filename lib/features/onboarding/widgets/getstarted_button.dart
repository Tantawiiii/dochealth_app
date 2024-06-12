import 'package:dochealth_app/core/helpers/extentions.dart';
import 'package:dochealth_app/core/routing/routers.dart';
import 'package:dochealth_app/core/theming/text_style.dart';
import 'package:dochealth_app/core/utils/colors_code.dart';
import 'package:dochealth_app/core/utils/strings.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushName(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsCode.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        StringsText.getStartedButton,
        style: TextStyles.font16WhiteWeight500,
      ),
    );
  }
}
