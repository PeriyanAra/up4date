part of 'registration_verification_bloc.dart';

@freezed
class RegistrationVerificationState with _$RegistrationVerificationState {
  const factory RegistrationVerificationState.loading() = RegistrationVerificationLoadingState;
  const factory RegistrationVerificationState.error({
    required Errors error,
  }) = RegistrationVerificationErrorState;
  const factory RegistrationVerificationState.loaded() = RegistrationVerificationLoadedState;
}