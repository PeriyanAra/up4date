import 'package:up4date/core/di/index.dart';
import 'package:up4date/presentation/registration_verification/bloc/registration_verification_bloc.dart';
import 'package:up4date/presentation/router/auto_router.dart';

final class PresentationDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di
      ..registerLazySingleton<AppRouter>(AppRouter.new)
      ..registerLazySingleton<RegistrationVerificationBloc>(() => RegistrationVerificationBloc(repository: di()));
  }
}
