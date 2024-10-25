import 'package:up4date/data/registration_verification/data_source/index.dart';
import 'package:up4date/domain/index.dart';

class RegistrationVerificationRepositoryImpl
    implements RegistrationVerificationRepository {
  final RegistrationVerificationMockDataSource _mockDataSource;

  RegistrationVerificationRepositoryImpl({
    required RegistrationVerificationMockDataSource mockDataSource,
  }) : _mockDataSource = mockDataSource;

  @override
  Future<bool> verifyPhoneNumber({required List<int> code}) {
    return _mockDataSource.verifyPhoneNumber(code: code);
  }
}
