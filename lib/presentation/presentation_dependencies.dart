import 'package:up4date/core/di/dependencies.dart';
import 'package:up4date/core/di/di.dart';
import 'package:up4date/presentation/router/auto_router.dart';

final class PresentationDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di.registerLazySingleton<AppRouter>(AppRouter.new);
  }
}
