import 'package:dochealth_app/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/utils/strings.dart';
import '../../../../core/widgets/build_text_form_field.dart';
import 'build_password_validatons.dart';

class BuildEmailAndPassword extends StatefulWidget {
  const BuildEmailAndPassword({super.key});

  @override
  State<BuildEmailAndPassword> createState() => _BuildEmailAndPasswordState();
}

class _BuildEmailAndPasswordState extends State<BuildEmailAndPassword> {
  bool isObscuredText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          BuildTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: StringsText.txtEmail,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return StringsText.txtEmailIsValid;
              }
            },
          ),
          verticalSpace(18),
          BuildTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: StringsText.txtPassword,
            isObscureText: isObscuredText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscuredText = !isObscuredText;
                });
              },
              child: Icon(
                isObscuredText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return StringsText.txtPasswordIsValid;
              }
            },
          ),
          verticalSpace(24),
          BuildPasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
