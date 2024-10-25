abstract class RegistrationVerificationRepository {
  Future<bool> verifyPhoneNumber({required List<int> code});
}
