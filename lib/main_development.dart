import 'package:dochealth_app/core/routing/app_router.dart';
import 'package:dochealth_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';



void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(
    DocAppClient(
      appRouter: AppRouter(),
    ),
  );
}

// flutter run --release -t lib/main_development.dart --flavor Development