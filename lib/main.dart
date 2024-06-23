import 'package:dochealth_app/core/routing/app_router.dart';
import 'package:dochealth_app/doc_app.dart';
import 'package:flutter/material.dart';

import 'core/di/dependency_injection.dart';

void main() {
  setupGetIt();
  runApp(
    DocAppClient(
      appRouter: AppRouter(),
    ),
  );
}
