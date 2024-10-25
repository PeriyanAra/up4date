import 'package:up4date/core/di/index.dart';
import 'package:up4date/data/index.dart';
import 'package:up4date/domain/index.dart';

final class DataDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di
      ..registerSingleton<RegistrationMockDataSource>(
          RegistrationMockDataSource())
      ..registerSingleton<RegistrationRepository>(
          RegistrationRepositoryImpl(mockDataSource: di()));
  }
}
