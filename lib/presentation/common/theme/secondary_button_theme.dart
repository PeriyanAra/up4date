import 'package:flutter/material.dart';
import 'package:up4date/presentation/theme/index.dart';

class SecondaryButtonTheme extends ThemeExtension<SecondaryButtonTheme> {
  const SecondaryButtonTheme({
    required Up4DateColorTheme colorTheme,
    required Up4DateTextTheme textTheme,
  })  : _colorTheme = colorTheme,
        _textTheme = textTheme;

  final Up4DateColorTheme _colorTheme;
  final Up4DateTextTheme _textTheme;

  TextStyle get textStyle =>
      _textTheme.bodyLarge.copyWith(color: _colorTheme.primary);

  ButtonStyle get buttonStyle => ButtonStyle(
        side: WidgetStatePropertyAll(
          BorderSide(
            color: _colorTheme.primary,
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
      other is SecondaryButtonTheme &&
          runtimeType == other.runtimeType &&
          _colorTheme == other._colorTheme;

  @override
  ThemeExtension<SecondaryButtonTheme> copyWith({
    Up4DateColorTheme? colorTheme,
    Up4DateTextTheme? textTheme,
  }) {
    return SecondaryButtonTheme(
      colorTheme: colorTheme ?? _colorTheme,
      textTheme: textTheme ?? _textTheme,
    );
  }

  @override
  ThemeExtension<SecondaryButtonTheme> lerp(
    covariant ThemeExtension<SecondaryButtonTheme>? other,
    double t,
  ) {
    return this;
  }

  static SecondaryButtonTheme of(BuildContext context) {
    return Theme.of(context).extension<SecondaryButtonTheme>()!;
  }
}
