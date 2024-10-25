import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:up4date/app/app_theme_mode/app_theme_mode.dart';
import 'package:up4date/core/di/di_get_it_implementation.dart';
import 'package:up4date/presentation/router/auto_router.dart';
import 'package:up4date/presentation/theme/index.dart';

import 'package:provider/provider.dart';

class Up4DateApp extends StatefulWidget {
  const Up4DateApp({super.key});

  @override
  State<Up4DateApp> createState() => _Up4DateAppState();
}

class _Up4DateAppState extends State<Up4DateApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'DiMind',
      theme: Up4DateTheme.light(),
      darkTheme: Up4DateTheme.dark(),
      themeMode: context.watch<AppThemeMode>().themeMode,
      routerConfig: di<AppRouter>().config(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
