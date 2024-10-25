import 'dart:async';
import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:up4date/app/app_theme_mode/app_theme_mode.dart';
import 'package:up4date/app/app_theme_mode/app_theme_mode_settings.dart';
import 'package:up4date/app/restart_widget.dart';
import 'package:up4date/core/di/di_get_it_implementation.dart';
import 'package:up4date/core/di/register_app_dependencies.dart';
import 'package:provider/provider.dart';

Future<void> mainShared(
  Widget appProvider,
) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      FlutterError.onError = (FlutterErrorDetails errorDetails) {
        Zone.current.handleUncaughtError(
          errorDetails.exception,
          errorDetails.stack ?? StackTrace.empty,
        );
      };

      final di = DiGetItImplementation();
      await registerAppDependencies(di);

      runApp(
        RestartWidget(
          child: ChangeNotifierProvider.value(
            value: AppThemeMode(di<AppThemeModeSettings>().themeMode),
            child: appProvider,
          ),
          onBeforeRestart: () async {
            await di.reset();
            await registerAppDependencies(di);
          },
        ),
      );
    },
    (error, StackTrace stackTrace) {
      dev.log(
        'An unhandled error!',
        error: error,
        stackTrace: stackTrace,
      );
    },
  );
}
