import 'dart:async';
import 'dart:developer' as dev;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:up4date/app/app_theme_mode/app_theme_mode.dart';
import 'package:up4date/app/app_theme_mode/app_theme_mode_settings.dart';
import 'package:up4date/app/restart_widget.dart';
import 'package:provider/provider.dart';
import 'package:up4date/core/di/index.dart';

Future<void> mainShared(
  Widget appProvider,
) async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();

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
            child: EasyLocalization(
              supportedLocales: const [
                Locale('ru'),
              ],
              path: 'assets/translations',
              fallbackLocale: const Locale('ru'),
              startLocale: Locale('ru'),
              child: appProvider,
            ),
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
