

import 'package:dochealth_app/core/theming/text_style.dart';
import 'package:dochealth_app/core/utils/strings.dart';
import 'package:dochealth_app/features/onboarding/widgets/doc_logo_name.dart';
import 'package:dochealth_app/features/onboarding/widgets/doctor_image_text_widget.dart';
import 'package:dochealth_app/features/onboarding/widgets/getstarted_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.0.h, bottom:30.h),
            child:  Column(
              children: [
                const DocLogoAndName(),
                SizedBox(height: 30.h,),
                const DoctorImageTextWidget(),
                SizedBox(height: 18.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Text(
                        StringsText.txtOnBoardingDescription,
                        style: TextStyles.font13GrayNormal,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h,),
                      const GetStartedButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
