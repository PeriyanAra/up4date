import 'package:up4date/app/app_theme_mode/app_theme_mode_settings.dart';
import 'package:up4date/core/di/dependencies.dart';
import 'package:up4date/core/di/di.dart';

final class AppSharedDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di.registerSingleton<AppThemeModeSettings>(
      await AppThemeModeSettings.createInstance(appKeyValueStorage: di()),
    );
  }
}
