import 'package:dochealth_app/core/widgets/build_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/text_style.dart';
import '../../../login/ui/widgets/build_terms_and_conditions_text.dart';
import '../../logic/cubit/sign_up_cubit.dart';
import '../widgets/already_have_account_text.dart';
import '../widgets/build_sign_up_form.dart';
import '../widgets/sign_up_bloc_listener.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // to fix white part top of the Keyboard window opening
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GrayNormal,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    BuildButton(
                      textButton: "Create Account",
                      textStyle: TextStyles.font16WhiteMedium,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}