import 'package:flutter/foundation.dart';
import 'package:up4date/data/registration_verification/index.dart';

class RegistrationVerificationMockDataSource extends RegistrationVerificationDataSource{
  final _verificationCode = [1, 1, 1, 1, 1, 1];
  
  @override
  Future<bool> verifyPhoneNumber({required List<int> code}) {
    return Future.delayed(Duration(seconds: 2), () {
      return listEquals(code, _verificationCode);
    });
  }
}
