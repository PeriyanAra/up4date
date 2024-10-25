import 'package:flutter/material.dart';
import 'package:up4date/presentation/theme/index.dart';

class PrimaryButtonTheme extends ThemeExtension<PrimaryButtonTheme> {
  const PrimaryButtonTheme({
    required Up4DateColorTheme colorTheme,
    required Up4DateTextTheme textTheme,
  })  : _colorTheme = colorTheme,
        _textTheme = textTheme;

  final Up4DateColorTheme _colorTheme;
  final Up4DateTextTheme _textTheme;

  // TextStyle get textStyle => _textTheme.bodyLarge;

  ButtonStyle get buttonStyle => ButtonStyle(
        backgroundColor: _colorTheme.primary,
        textStyle: WidgetStateTextStyle.resolveWith(
          (state) {
            if (state == WidgetState.disabled) {
              return _textTheme.bodyLarge.copyWith(
                color: Up4DateColorsPalette.gray50,
              );
            }

            return _textTheme.bodyLarge;
          },
        ),
      );

      
  @override
  int get hashCode => Object.hash(
        _colorTheme,
        this,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PrimaryButtonTheme &&
          runtimeType == other.runtimeType &&
          _colorTheme == other._colorTheme;

  @override
  ThemeExtension<PrimaryButtonTheme> copyWith({
    Up4DateColorTheme? colorTheme,
    Up4DateTextTheme? textTheme,
  }) {
    return PrimaryButtonTheme(
      colorTheme: colorTheme ?? _colorTheme,
      textTheme: textTheme ?? _textTheme,
    );
  }

  @override
  ThemeExtension<PrimaryButtonTheme> lerp(
    covariant ThemeExtension<PrimaryButtonTheme>? other,
    double t,
  ) {
    return this;
  }

  static PrimaryButtonTheme of(BuildContext context) {
    return Theme.of(context).extension<PrimaryButtonTheme>()!;
  }
}
