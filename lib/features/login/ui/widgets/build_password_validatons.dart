import 'package:dochealth_app/core/helpers/spacing.dart';
import 'package:dochealth_app/core/theming/text_style.dart';
import 'package:dochealth_app/core/utils/colors_code.dart';
import 'package:flutter/material.dart';

class BuildPasswordValidations extends StatelessWidget {
  bool hasLowerCase;
  bool hasUpperCase;
  bool hasSpecialCharacter;
  bool hasNumber;
  bool hasMinLength;

  BuildPasswordValidations({
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacter,
    required this.hasNumber,
    required this.hasMinLength,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildValidationRow("at least 1 of lowerCase latter", hasLowerCase),
        verticalSpace(2),
        BuildValidationRow("at least 1 of upperCase latter", hasUpperCase),
        verticalSpace(2),
        BuildValidationRow("at least 1 of Special Character", hasSpecialCharacter),
        verticalSpace(2),
        BuildValidationRow("at least 1 of Number", hasNumber),
        verticalSpace(2),
        BuildValidationRow("at least 8 Of Character long", hasMinLength),
        verticalSpace(2),
      ],
    );
  }

  Widget BuildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsCode.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: ColorsCode.fillGreen,
            decorationThickness: 2,
            color: hasValidated ? ColorsCode.gray : ColorsCode.darkBlue,
          ),
        )
      ],
    );
  }
}