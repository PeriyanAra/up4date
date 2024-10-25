import 'package:flutter/material.dart';
import 'package:up4date/presentation/theme/index.dart';

class Up4DateAppBarTheme extends ThemeExtension<Up4DateAppBarTheme> {
  const Up4DateAppBarTheme({
    required Up4DateColorTheme colorTheme,
  }) : _colorTheme = colorTheme;

  final Up4DateColorTheme _colorTheme;

  double get leadingWidth => 48.0;
  double get appBarHeight => 70.0;
  Color get backgroundColor => _colorTheme.backgroundPrimary;
  EdgeInsets get leadingPadding => const EdgeInsets.only(left: 16.0);

  @override
  int get hashCode => Object.hash(
        _colorTheme,
        this,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Up4DateAppBarTheme &&
          runtimeType == other.runtimeType &&
          _colorTheme == other._colorTheme;

  @override
  ThemeExtension<Up4DateAppBarTheme> copyWith({Up4DateColorTheme? colorTheme}) {
    return Up4DateAppBarTheme(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<Up4DateAppBarTheme> lerp(
    covariant ThemeExtension<Up4DateAppBarTheme>? other,
    double t,
  ) {
    return this;
  }

  static Up4DateAppBarTheme of(BuildContext context) {
    return Theme.of(context).extension<Up4DateAppBarTheme>()!;
  }
}
