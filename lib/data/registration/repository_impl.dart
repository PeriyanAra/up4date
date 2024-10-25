import 'package:up4date/data/registration/data_source/index.dart';
import 'package:up4date/domain/index.dart';

class RegistrationRepositoryImpl implements RegistrationRepository {
  final RegistrationMockDataSource _mockDataSource;

  RegistrationRepositoryImpl({
    required RegistrationMockDataSource mockDataSource,
  }) : _mockDataSource = mockDataSource;

  @override
  Future<bool> verifyPhoneNumber({required List<int> code}) {
    return _mockDataSource.verifyPhoneNumber(code: code);
  }
}
