import 'package:dochealth_app/core/helpers/spacing.dart';
import 'package:dochealth_app/core/theming/text_style.dart';
import 'package:dochealth_app/core/utils/strings.dart';
import 'package:dochealth_app/core/widgets/build_button.dart';
import 'package:dochealth_app/core/widgets/build_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/build_already_have_acc_text.dart';
import '../widgets/build_icons_social_media.dart';
import '../widgets/build_sigin_with_media_text.dart';
import '../widgets/build_terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscuredText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 35.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringsText.txtWelcomeBack,
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  StringsText.txtDescriptionLogin,
                  style: TextStyles.font14GrayNormal,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const BuildTextFormField(hintText: StringsText.txtEmail),
                      verticalSpace(18),
                      BuildTextFormField(
                        hintText: StringsText.txtPassword,
                        isObscureText: isObscuredText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscuredText = !isObscuredText;
                            });
                          },
                          child: Icon(
                            isObscuredText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          StringsText.txtForgetPassword,
                          style: TextStyles.font13BlueNormal,
                        ),
                      ),
                      verticalSpace(40),
                      BuildButton(
                        textButton: StringsText.txtLogin,
                        textStyle: TextStyles.font16WhiteMedium,
                        onPressed: () {},
                      ),
                      verticalSpace(46),
                      const BuildOrSignInMediaAccounts(),
                      verticalSpace(46),
                      // TODO: HERE we Build Row media Login Icons
                      const BuildIconsSocialMedia(),
                      verticalSpace(32),
                      const TermsAndConditionsText(),
                      verticalSpace(24),
                      const AlreadyHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
