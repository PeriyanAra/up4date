import 'package:up4date/core/core.dart';
import 'package:up4date/core/di/dependencies.dart';
import 'package:up4date/core/di/di.dart';

final class CoreDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di
      ..registerLazySingleton<CustomJsonDecoder>(() => CustomJsonDecoder([]))
      ..registerLazySingleton<JsonStringConverter>(
          () => JsonStringConverter(jsonDecoder: di()));
  }
}
