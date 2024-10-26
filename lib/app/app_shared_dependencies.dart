import 'package:up4date/app/app_theme_mode/index.dart';
import 'package:up4date/core/di/index.dart';

final class AppSharedDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di.registerSingleton<AppThemeModeSettings>(
      await AppThemeModeSettings.createInstance(appKeyValueStorage: di()),
    );
  }
}
