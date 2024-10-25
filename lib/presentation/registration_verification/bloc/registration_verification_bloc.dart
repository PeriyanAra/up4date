import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:up4date/domain/index.dart';
import 'package:up4date/presentation/common/enums/errors.dart';

part 'registration_verification_state.dart';
part 'registration_verification_event.dart';
part 'registration_verification_bloc.freezed.dart';

class RegistrationVerificationBloc
    extends Bloc<RegistrationVerificationEvent, RegistrationVerificationState> {
  final RegistrationVerificationRepository _repository;

  RegistrationVerificationBloc({
    required RegistrationVerificationRepository repository,
  })  : _repository = repository,
        super(const RegistrationVerificationState.loading()) {
    on<RegistrationVerificationVerifyPhoneNumberEvent>(
        _handleRegistrationVerificationVerifyPhoneNumberEvent);
  }

  FutureOr<void> _handleRegistrationVerificationVerifyPhoneNumberEvent(
    RegistrationVerificationVerifyPhoneNumberEvent event,
    Emitter<RegistrationVerificationState> emit,
  ) async {
    emit(RegistrationVerificationState.loading());

    var convertedVerificationCode = <int>[];

    for (var element in event.verificationCode.split('')) {
      convertedVerificationCode.add(int.parse(element));
    }

    final verificationResult =
        await _repository.verifyPhoneNumber(code: convertedVerificationCode);

    if (verificationResult) {
      emit(RegistrationVerificationState.loaded());
    } else {
      emit(
          RegistrationVerificationState.error(error: Errors.verificationError));
    }
  }
}
