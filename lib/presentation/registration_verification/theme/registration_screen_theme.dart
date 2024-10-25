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
        color: Up4DateColorsPalette.gray,
      );

  TextStyle get titleTextStyle => _textTheme.headlineLarge.copyWith(
        color: Up4DateColorsPalette.white,
      );

  TextStyle get phoneNumberSectionTextStyle =>
      _textTheme.headlineSmall.copyWith(
        color: Up4DateColorsPalette.white,
      );

  TextStyle get inputPhoneNumberTextStyle => TextStyle(color: Colors.white);

  EdgeInsets get countryPickerPadding =>
      const EdgeInsets.fromLTRB(12, 10, 14, 10);

  Color get inputFillColor => Up4DateColorsPalette.black50;

  BoxDecoration get phoneNumberSectionDecoration => BoxDecoration(
        color: Up4DateColorsPalette.black50,
        borderRadius: BorderRadius.circular(12.0),
      );

  EdgeInsets get screenContentPadding => EdgeInsets.symmetric(horizontal: 16.0);

  double get continueButtonBottomSpace => 26.0;

  double get phoneInputLeftSpace => 8.0;

  double get phoneNumberSectionTopSpace => 24.0;

  InputBorder get phoneInputBorder => OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      );

  BorderRadius get phoneNumberCountryFlagBorderRadius =>
      BorderRadius.circular(2.57);

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
