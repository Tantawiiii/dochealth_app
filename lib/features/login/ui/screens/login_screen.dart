import 'package:dochealth_app/core/helpers/spacing.dart';
import 'package:dochealth_app/core/theming/text_style.dart';
import 'package:dochealth_app/core/utils/strings.dart';
import 'package:dochealth_app/core/widgets/build_button.dart';
import 'package:dochealth_app/features/login/data/models/login_request_body.dart';
import 'package:dochealth_app/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/build_already_have_acc_text.dart';
import '../widgets/build_email_and_password.dart';
import '../widgets/build_icons_social_media.dart';
import '../widgets/build_login_bloc_listener.dart';
import '../widgets/build_sigin_with_media_text.dart';
import '../widgets/build_terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Column(
                  children: [
                    const BuildEmailAndPassword(),
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
                      onPressed: () {
                        validateToLogin(context);
                      },
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
                    const BuildLoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateToLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
