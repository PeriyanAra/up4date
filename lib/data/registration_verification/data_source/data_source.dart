abstract class RegistrationVerificationDataSource {
  Future<bool> verifyPhoneNumber({required List<int> code});
}
