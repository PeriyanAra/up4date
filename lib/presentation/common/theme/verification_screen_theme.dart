import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:up4date/presentation/theme/index.dart';

class VerificationScreenTheme extends ThemeExtension<VerificationScreenTheme> {
  const VerificationScreenTheme({
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

  TextStyle get linkedSubtitleTextStyle => _textTheme.labelLarge.copyWith(
        color: _colorTheme.tertiary,
        fontWeight: FontWeight.w500,
      );

  TextStyle get errorTextStyle => _textTheme.titleLarge.copyWith(
        color: Up4DateColorsPalette.red,
        fontWeight: FontWeight.w500,
      );

  Color get defaultCursoreColor => _colorTheme.tertiary;
  Color get errorCursoreColor => Up4DateColorsPalette.red;

  PinTheme get defaultPinTheme => PinTheme(
        width: 48.0,
        height: 48.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Up4DateColorsPalette.black50,
        ),
      );

  PinTheme get focusedPinTheme => PinTheme(
        width: 48.0,
        height: 48.0,
        textStyle: _textTheme.displaySmall.copyWith(
          color: _colorTheme.secondary,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: _colorTheme.tertiary,
          ),
        ),
      );

  PinTheme get submittedPinTheme => PinTheme(
        width: 48.0,
        height: 40.0,
        textStyle: _textTheme.displaySmall.copyWith(
          color: _colorTheme.secondary,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Up4DateColorsPalette.black50,
        ),
      );

  PinTheme get errorPinTheme => PinTheme(
        width: 48.0,
        height: 48.0,
        textStyle: _textTheme.displaySmall.copyWith(
          color: _colorTheme.secondary,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: Up4DateColorsPalette.red,
          ),
        ),
      );

  @override
  int get hashCode => Object.hash(
        _colorTheme,
        _textTheme,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VerificationScreenTheme &&
          runtimeType == other.runtimeType &&
          _colorTheme == other._colorTheme;

  @override
  ThemeExtension<VerificationScreenTheme> copyWith({
    Up4DateColorTheme? colorTheme,
    Up4DateTextTheme? textTheme,
  }) {
    return VerificationScreenTheme(
      colorTheme: colorTheme ?? _colorTheme,
      textTheme: textTheme ?? _textTheme,
    );
  }

  @override
  ThemeExtension<VerificationScreenTheme> lerp(
    covariant ThemeExtension<VerificationScreenTheme>? other,
    double t,
  ) {
    return this;
  }

  static VerificationScreenTheme of(BuildContext context) {
    return Theme.of(context).extension<VerificationScreenTheme>()!;
  }
}
