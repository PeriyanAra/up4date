import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:up4date/core/di/di_get_it_implementation.dart';
import 'package:up4date/presentation/router/auto_router.dart';
import 'package:up4date/presentation/theme/index.dart';

class Up4DateApp extends StatefulWidget {
  const Up4DateApp({super.key});

  @override
  State<Up4DateApp> createState() => _Up4DateAppState();
}

class _Up4DateAppState extends State<Up4DateApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Up4Date',
      darkTheme: Up4DateTheme.dark(),
      themeMode: ThemeMode.dark,
      routerConfig: di<AppRouter>().config(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
