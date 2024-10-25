part of 'verification_bloc.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState.initial() = VerificationInitialState;
  const factory VerificationState.loading() = VerificationLoadingState;
  const factory VerificationState.error({
    required Errors error,
  }) = VerificationErrorState;
  const factory VerificationState.loaded() = VerificationLoadedState;
}
