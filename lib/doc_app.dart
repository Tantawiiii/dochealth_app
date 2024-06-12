
import 'package:dochealth_app/core/routing/app_router.dart';
import 'package:dochealth_app/core/utils/colors_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routers.dart';

class DocAppClient extends StatelessWidget {
  final AppRouter appRouter;
  const DocAppClient({super.key, required this.appRouter});

  @override 
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375,812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsCode.mainBlue,
          scaffoldBackgroundColor: ColorsCode.white
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
