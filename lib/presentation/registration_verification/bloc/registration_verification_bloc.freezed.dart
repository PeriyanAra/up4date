// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationVerificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Errors error) error,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Errors error)? error,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Errors error)? error,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationVerificationLoadingState value)
        loading,
    required TResult Function(RegistrationVerificationErrorState value) error,
    required TResult Function(RegistrationVerificationLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationVerificationLoadingState value)? loading,
    TResult? Function(RegistrationVerificationErrorState value)? error,
    TResult? Function(RegistrationVerificationLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationVerificationLoadingState value)? loading,
    TResult Function(RegistrationVerificationErrorState value)? error,
    TResult Function(RegistrationVerificationLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationVerificationStateCopyWith<$Res> {
  factory $RegistrationVerificationStateCopyWith(
          RegistrationVerificationState value,
          $Res Function(RegistrationVerificationState) then) =
      _$RegistrationVerificationStateCopyWithImpl<$Res,
          RegistrationVerificationState>;
}

/// @nodoc
class _$RegistrationVerificationStateCopyWithImpl<$Res,
        $Val extends RegistrationVerificationState>
    implements $RegistrationVerificationStateCopyWith<$Res> {
  _$RegistrationVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RegistrationVerificationLoadingStateImplCopyWith<$Res> {
  factory _$$RegistrationVerificationLoadingStateImplCopyWith(
          _$RegistrationVerificationLoadingStateImpl value,
          $Res Function(_$RegistrationVerificationLoadingStateImpl) then) =
      __$$RegistrationVerificationLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationVerificationLoadingStateImplCopyWithImpl<$Res>
    extends _$RegistrationVerificationStateCopyWithImpl<$Res,
        _$RegistrationVerificationLoadingStateImpl>
    implements _$$RegistrationVerificationLoadingStateImplCopyWith<$Res> {
  __$$RegistrationVerificationLoadingStateImplCopyWithImpl(
      _$RegistrationVerificationLoadingStateImpl _value,
      $Res Function(_$RegistrationVerificationLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationVerificationLoadingStateImpl
    implements RegistrationVerificationLoadingState {
  const _$RegistrationVerificationLoadingStateImpl();

  @override
  String toString() {
    return 'RegistrationVerificationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationVerificationLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Errors error) error,
    required TResult Function() loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Errors error)? error,
    TResult? Function()? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Errors error)? error,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationVerificationLoadingState value)
        loading,
    required TResult Function(RegistrationVerificationErrorState value) error,
    required TResult Function(RegistrationVerificationLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationVerificationLoadingState value)? loading,
    TResult? Function(RegistrationVerificationErrorState value)? error,
    TResult? Function(RegistrationVerificationLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationVerificationLoadingState value)? loading,
    TResult Function(RegistrationVerificationErrorState value)? error,
    TResult Function(RegistrationVerificationLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegistrationVerificationLoadingState
    implements RegistrationVerificationState {
  const factory RegistrationVerificationLoadingState() =
      _$RegistrationVerificationLoadingStateImpl;
}

/// @nodoc
abstract class _$$RegistrationVerificationErrorStateImplCopyWith<$Res> {
  factory _$$RegistrationVerificationErrorStateImplCopyWith(
          _$RegistrationVerificationErrorStateImpl value,
          $Res Function(_$RegistrationVerificationErrorStateImpl) then) =
      __$$RegistrationVerificationErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Errors error});
}

/// @nodoc
class __$$RegistrationVerificationErrorStateImplCopyWithImpl<$Res>
    extends _$RegistrationVerificationStateCopyWithImpl<$Res,
        _$RegistrationVerificationErrorStateImpl>
    implements _$$RegistrationVerificationErrorStateImplCopyWith<$Res> {
  __$$RegistrationVerificationErrorStateImplCopyWithImpl(
      _$RegistrationVerificationErrorStateImpl _value,
      $Res Function(_$RegistrationVerificationErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RegistrationVerificationErrorStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Errors,
    ));
  }
}

/// @nodoc

class _$RegistrationVerificationErrorStateImpl
    implements RegistrationVerificationErrorState {
  const _$RegistrationVerificationErrorStateImpl({required this.error});

  @override
  final Errors error;

  @override
  String toString() {
    return 'RegistrationVerificationState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationVerificationErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of RegistrationVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationVerificationErrorStateImplCopyWith<
          _$RegistrationVerificationErrorStateImpl>
      get copyWith => __$$RegistrationVerificationErrorStateImplCopyWithImpl<
          _$RegistrationVerificationErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Errors error) error,
    required TResult Function() loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Errors error)? error,
    TResult? Function()? loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Errors error)? error,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationVerificationLoadingState value)
        loading,
    required TResult Function(RegistrationVerificationErrorState value) error,
    required TResult Function(RegistrationVerificationLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationVerificationLoadingState value)? loading,
    TResult? Function(RegistrationVerificationErrorState value)? error,
    TResult? Function(RegistrationVerificationLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationVerificationLoadingState value)? loading,
    TResult Function(RegistrationVerificationErrorState value)? error,
    TResult Function(RegistrationVerificationLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegistrationVerificationErrorState
    implements RegistrationVerificationState {
  const factory RegistrationVerificationErrorState(
      {required final Errors error}) = _$RegistrationVerificationErrorStateImpl;

  Errors get error;

  /// Create a copy of RegistrationVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationVerificationErrorStateImplCopyWith<
          _$RegistrationVerificationErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegistrationVerificationLoadedStateImplCopyWith<$Res> {
  factory _$$RegistrationVerificationLoadedStateImplCopyWith(
          _$RegistrationVerificationLoadedStateImpl value,
          $Res Function(_$RegistrationVerificationLoadedStateImpl) then) =
      __$$RegistrationVerificationLoadedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegistrationVerificationLoadedStateImplCopyWithImpl<$Res>
    extends _$RegistrationVerificationStateCopyWithImpl<$Res,
        _$RegistrationVerificationLoadedStateImpl>
    implements _$$RegistrationVerificationLoadedStateImplCopyWith<$Res> {
  __$$RegistrationVerificationLoadedStateImplCopyWithImpl(
      _$RegistrationVerificationLoadedStateImpl _value,
      $Res Function(_$RegistrationVerificationLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationVerificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegistrationVerificationLoadedStateImpl
    implements RegistrationVerificationLoadedState {
  const _$RegistrationVerificationLoadedStateImpl();

  @override
  String toString() {
    return 'RegistrationVerificationState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationVerificationLoadedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Errors error) error,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Errors error)? error,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Errors error)? error,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegistrationVerificationLoadingState value)
        loading,
    required TResult Function(RegistrationVerificationErrorState value) error,
    required TResult Function(RegistrationVerificationLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationVerificationLoadingState value)? loading,
    TResult? Function(RegistrationVerificationErrorState value)? error,
    TResult? Function(RegistrationVerificationLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationVerificationLoadingState value)? loading,
    TResult Function(RegistrationVerificationErrorState value)? error,
    TResult Function(RegistrationVerificationLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RegistrationVerificationLoadedState
    implements RegistrationVerificationState {
  const factory RegistrationVerificationLoadedState() =
      _$RegistrationVerificationLoadedStateImpl;
}

/// @nodoc
mixin _$RegistrationVerificationEvent {
  String get verificationCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String verificationCode) verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String verificationCode)? verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String verificationCode)? verifyPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RegistrationVerificationVerifyPhoneNumberEvent value)
        verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationVerificationVerifyPhoneNumberEvent value)?
        verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationVerificationVerifyPhoneNumberEvent value)?
        verifyPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RegistrationVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationVerificationEventCopyWith<RegistrationVerificationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationVerificationEventCopyWith<$Res> {
  factory $RegistrationVerificationEventCopyWith(
          RegistrationVerificationEvent value,
          $Res Function(RegistrationVerificationEvent) then) =
      _$RegistrationVerificationEventCopyWithImpl<$Res,
          RegistrationVerificationEvent>;
  @useResult
  $Res call({String verificationCode});
}

/// @nodoc
class _$RegistrationVerificationEventCopyWithImpl<$Res,
        $Val extends RegistrationVerificationEvent>
    implements $RegistrationVerificationEventCopyWith<$Res> {
  _$RegistrationVerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationCode = null,
  }) {
    return _then(_value.copyWith(
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationVerificationVerifyPhoneNumberEventImplCopyWith<
    $Res> implements $RegistrationVerificationEventCopyWith<$Res> {
  factory _$$RegistrationVerificationVerifyPhoneNumberEventImplCopyWith(
          _$RegistrationVerificationVerifyPhoneNumberEventImpl value,
          $Res Function(_$RegistrationVerificationVerifyPhoneNumberEventImpl)
              then) =
      __$$RegistrationVerificationVerifyPhoneNumberEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String verificationCode});
}

/// @nodoc
class __$$RegistrationVerificationVerifyPhoneNumberEventImplCopyWithImpl<$Res>
    extends _$RegistrationVerificationEventCopyWithImpl<$Res,
        _$RegistrationVerificationVerifyPhoneNumberEventImpl>
    implements
        _$$RegistrationVerificationVerifyPhoneNumberEventImplCopyWith<$Res> {
  __$$RegistrationVerificationVerifyPhoneNumberEventImplCopyWithImpl(
      _$RegistrationVerificationVerifyPhoneNumberEventImpl _value,
      $Res Function(_$RegistrationVerificationVerifyPhoneNumberEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationCode = null,
  }) {
    return _then(_$RegistrationVerificationVerifyPhoneNumberEventImpl(
      verificationCode: null == verificationCode
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegistrationVerificationVerifyPhoneNumberEventImpl
    implements RegistrationVerificationVerifyPhoneNumberEvent {
  const _$RegistrationVerificationVerifyPhoneNumberEventImpl(
      {required this.verificationCode});

  @override
  final String verificationCode;

  @override
  String toString() {
    return 'RegistrationVerificationEvent.verifyPhoneNumber(verificationCode: $verificationCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationVerificationVerifyPhoneNumberEventImpl &&
            (identical(other.verificationCode, verificationCode) ||
                other.verificationCode == verificationCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationCode);

  /// Create a copy of RegistrationVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationVerificationVerifyPhoneNumberEventImplCopyWith<
          _$RegistrationVerificationVerifyPhoneNumberEventImpl>
      get copyWith =>
          __$$RegistrationVerificationVerifyPhoneNumberEventImplCopyWithImpl<
                  _$RegistrationVerificationVerifyPhoneNumberEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String verificationCode) verifyPhoneNumber,
  }) {
    return verifyPhoneNumber(verificationCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String verificationCode)? verifyPhoneNumber,
  }) {
    return verifyPhoneNumber?.call(verificationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String verificationCode)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(verificationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            RegistrationVerificationVerifyPhoneNumberEvent value)
        verifyPhoneNumber,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegistrationVerificationVerifyPhoneNumberEvent value)?
        verifyPhoneNumber,
  }) {
    return verifyPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegistrationVerificationVerifyPhoneNumberEvent value)?
        verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class RegistrationVerificationVerifyPhoneNumberEvent
    implements RegistrationVerificationEvent {
  const factory RegistrationVerificationVerifyPhoneNumberEvent(
          {required final String verificationCode}) =
      _$RegistrationVerificationVerifyPhoneNumberEventImpl;

  @override
  String get verificationCode;

  /// Create a copy of RegistrationVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationVerificationVerifyPhoneNumberEventImplCopyWith<
          _$RegistrationVerificationVerifyPhoneNumberEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
