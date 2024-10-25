part of 'registration_verification_bloc.dart';

@freezed
class RegistrationVerificationEvent with _$RegistrationVerificationEvent {
  const factory RegistrationVerificationEvent.verifyPhoneNumber({
    required String verificationCode, 
  }) = RegistrationVerificationVerifyPhoneNumberEvent;
}
