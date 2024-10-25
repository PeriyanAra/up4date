import 'package:up4date/core/di/index.dart';
import 'package:up4date/core/index.dart';

final class CoreDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di
      ..registerLazySingleton<CustomJsonDecoder>(() => CustomJsonDecoder([]))
      ..registerLazySingleton<JsonStringConverter>(
          () => JsonStringConverter(jsonDecoder: di()));
  }
}
