// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:up4date/presentation/auth/auth_screen.dart' as _i1;
import 'package:up4date/presentation/home/home_screen.dart' as _i2;
import 'package:up4date/presentation/registration_verification/registration_screen.dart'
    as _i3;
import 'package:up4date/presentation/verification/verification_screen.dart'
    as _i4;

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i5.PageRouteInfo<void> {
  const AuthRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.RegistrationScreen]
class RegistrationRoute extends _i5.PageRouteInfo<void> {
  const RegistrationRoute({List<_i5.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.RegistrationScreen();
    },
  );
}

/// generated route for
/// [_i4.VerificationScreen]
class VerificationRoute extends _i5.PageRouteInfo<VerificationRouteArgs> {
  VerificationRoute({
    _i6.Key? key,
    required String phoneNumber,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          VerificationRoute.name,
          args: VerificationRouteArgs(
            key: key,
            phoneNumber: phoneNumber,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VerificationRouteArgs>();
      return _i4.VerificationScreen(
        key: args.key,
        phoneNumber: args.phoneNumber,
      );
    },
  );
}

class VerificationRouteArgs {
  const VerificationRouteArgs({
    this.key,
    required this.phoneNumber,
  });

  final _i6.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'VerificationRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}
