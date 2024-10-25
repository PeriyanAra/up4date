import 'package:flutter/material.dart';
import 'package:up4date/presentation/theme/index.dart';

class AuthScreenTheme extends ThemeExtension<AuthScreenTheme> {
  const AuthScreenTheme({
    required Up4DateColorTheme colorTheme,
    required Up4DateTextTheme textTheme,
  })  : _colorTheme = colorTheme,
        _textTheme = textTheme;

  final Up4DateColorTheme _colorTheme;
  final Up4DateTextTheme _textTheme;

  TextStyle get linkedPrivacyPolicyTextStyle => _textTheme.labelSmall.copyWith(
        color: _colorTheme.tertiary,
        fontWeight: FontWeight.w500,
      );

  double get defaultSpace => 16.0;
  double get bigSpace => 20.0;

  TextStyle get privacyPolicyTextStyle => _textTheme.labelSmall.copyWith(
        color: _colorTheme.secondary,
      );

  TextStyle get havingTroubleLoginTextStyle => _textTheme.bodyMedium.copyWith(
        color: _colorTheme.tertiary,
        fontWeight: FontWeight.w700,
      );

  ButtonStyle get buttonStyle => ButtonStyle(
        backgroundColor: _colorTheme.primary,
      );

  EdgeInsets get contentPadding => EdgeInsets.symmetric(
        horizontal: 16.0,
      );

  EdgeInsets get logoPadding => EdgeInsets.only(top: 20.0);

  @override
  int get hashCode => Object.hash(
        _colorTheme,
        _textTheme,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthScreenTheme &&
          runtimeType == other.runtimeType &&
          _colorTheme == other._colorTheme;

  @override
  ThemeExtension<AuthScreenTheme> copyWith({
    Up4DateColorTheme? colorTheme,
    Up4DateTextTheme? textTheme,
  }) {
    return AuthScreenTheme(
      colorTheme: colorTheme ?? _colorTheme,
      textTheme: textTheme ?? _textTheme,
    );
  }

  @override
  ThemeExtension<AuthScreenTheme> lerp(
    covariant ThemeExtension<AuthScreenTheme>? other,
    double t,
  ) {
    return this;
  }

  static AuthScreenTheme of(BuildContext context) {
    return Theme.of(context).extension<AuthScreenTheme>()!;
  }
}
