import 'package:dochealth_app/core/helpers/extentions.dart';
import 'package:dochealth_app/core/routing/routers.dart';
import 'package:dochealth_app/core/theming/text_style.dart';
import 'package:dochealth_app/core/utils/colors_code.dart';
import 'package:dochealth_app/features/login/logic/cubit/login_cubit.dart';
import 'package:dochealth_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildLoginBlocListener extends StatelessWidget {
  const BuildLoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsCode.mainBlue,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            setupErrorState( context,  error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: ColorsCode.fillRed,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              "Got it",
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }

}
