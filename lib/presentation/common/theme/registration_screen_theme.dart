import 'package:flutter/material.dart';
import 'package:up4date/presentation/theme/index.dart';

class RegistrationScreenTheme extends ThemeExtension<RegistrationScreenTheme> {
  const RegistrationScreenTheme({
    required Up4DateColorTheme colorTheme,
    required Up4DateTextTheme textTheme,
  })  : _colorTheme = colorTheme,
        _textTheme = textTheme;

  final Up4DateColorTheme _colorTheme;
  final Up4DateTextTheme _textTheme;

  TextStyle get subtitleTextStyle => _textTheme.bodyMedium.copyWith(
        color: Up4DateColorsPalette.gray50,
      );

  TextStyle get titleTextStyle => _textTheme.headlineLarge.copyWith(
        color: _colorTheme.secondary,
      );

  TextStyle get phoneNumberSectionTextStyle =>
      _textTheme.headlineSmall.copyWith(
        color: _colorTheme.secondary,
      );

  EdgeInsets get countryPickerPadding =>
      const EdgeInsets.fromLTRB(12, 10, 14, 10);

  Color get phoneNumberSectionBackgroundColor => Up4DateColorsPalette.black50;

  @override
  int get hashCode => Object.hash(
        _colorTheme,
        _textTheme,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegistrationScreenTheme &&
          runtimeType == other.runtimeType &&
          _colorTheme == other._colorTheme;

  @override
  ThemeExtension<RegistrationScreenTheme> copyWith({
    Up4DateColorTheme? colorTheme,
    Up4DateTextTheme? textTheme,
  }) {
    return RegistrationScreenTheme(
      colorTheme: colorTheme ?? _colorTheme,
      textTheme: textTheme ?? _textTheme,
    );
  }

  @override
  ThemeExtension<RegistrationScreenTheme> lerp(
    covariant ThemeExtension<RegistrationScreenTheme>? other,
    double t,
  ) {
    return this;
  }

  static RegistrationScreenTheme of(BuildContext context) {
    return Theme.of(context).extension<RegistrationScreenTheme>()!;
  }
}
