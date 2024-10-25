abstract class RegistrationRepository {
  Future<bool> verifyPhoneNumber({required List<int> code});
}
