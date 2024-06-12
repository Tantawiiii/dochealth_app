
import 'dart:async';

import 'package:dochealth_app/core/helpers/extentions.dart';
import 'package:dochealth_app/core/utils/colors_code.dart';
import 'package:dochealth_app/core/utils/images_path.dart';
import 'package:flutter/material.dart';

import '../../core/routing/routers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000), () {
      context.pushReplacementNamed(Routes.onBoardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsCode.white,
      body: Image.asset(ImagesPath.splashImage),
    );
  }
}
