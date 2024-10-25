part of 'verification_bloc.dart';

@freezed
class VerificationEvent with _$VerificationEvent {
  const factory VerificationEvent.verifyPhoneNumber({
    required String verificationCode,
  }) = _VerificationVerifyPhoneNumberEvent;
  
  const factory VerificationEvent.reset() = _VerificationResetEvent;
}
