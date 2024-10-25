import 'package:up4date/core/di/index.dart';
import 'package:up4date/device/index.dart';
import 'package:up4date/domain/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class DeviceDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    final appKeyValueStorage = DeviceAppKeyValueStorage(
      sharedPreferences: await SharedPreferences.getInstance(),
      jsonStringConverter: di(),
    );

    di.registerSingleton<AppKeyValueStorage>(appKeyValueStorage);
  }
}
