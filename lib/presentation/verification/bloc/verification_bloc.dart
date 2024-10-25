import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:up4date/domain/index.dart';
import 'package:up4date/presentation/common/enums/errors.dart';

part 'verification_state.dart';
part 'verification_event.dart';
part 'verification_bloc.freezed.dart';

class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  final RegistrationRepository _repository;

  VerificationBloc({
    required RegistrationRepository repository,
  })  : _repository = repository,
        super(const VerificationState.initial()) {
    on<_VerificationVerifyPhoneNumberEvent>(
        _handleVerificationVerifyPhoneNumberEvent);
    on<_VerificationResetEvent>(_handleVerificationResetEvent);
  }

  FutureOr<void> _handleVerificationVerifyPhoneNumberEvent(
    _VerificationVerifyPhoneNumberEvent event,
    Emitter<VerificationState> emit,
  ) async {
    emit(VerificationState.loading());

    var convertedVerificationCode = <int>[];

    for (var element in event.verificationCode.split('')) {
      convertedVerificationCode.add(int.parse(element));
    }

    final verificationResult =
        await _repository.verifyPhoneNumber(code: convertedVerificationCode);

    if (verificationResult) {
      emit(VerificationState.loaded());
    } else {
      emit(VerificationState.error(error: Errors.verificationError));
    }
  }

  void _handleVerificationResetEvent(
    _VerificationResetEvent event,
    Emitter<VerificationState> emit,
  ) {
    emit(VerificationState.initial());
  }
}
