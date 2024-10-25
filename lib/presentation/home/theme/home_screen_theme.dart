import 'package:flutter/material.dart';
import 'package:up4date/presentation/theme/index.dart';

class HomeScreenTheme extends ThemeExtension<HomeScreenTheme> {
  const HomeScreenTheme({
    required Up4DateColorTheme colorTheme,
    required Up4DateTextTheme textTheme,
  })  : _colorTheme = colorTheme,
        _textTheme = textTheme;

  final Up4DateColorTheme _colorTheme;
  final Up4DateTextTheme _textTheme;

  TextStyle get titleTextStyle => _textTheme.displayLarge.copyWith(
        color: _colorTheme.secondary,
      );

  Color get homeIconColor => _colorTheme.secondary;

  double get homeIconSize => 60.0;

  @override
  int get hashCode => Object.hash(
        _colorTheme,
        _textTheme,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeScreenTheme &&
          runtimeType == other.runtimeType &&
          _colorTheme == other._colorTheme;

  @override
  ThemeExtension<HomeScreenTheme> copyWith({
    Up4DateColorTheme? colorTheme,
    Up4DateTextTheme? textTheme,
  }) {
    return HomeScreenTheme(
      colorTheme: colorTheme ?? _colorTheme,
      textTheme: textTheme ?? _textTheme,
    );
  }

  @override
  ThemeExtension<HomeScreenTheme> lerp(
    covariant ThemeExtension<HomeScreenTheme>? other,
    double t,
  ) {
    return this;
  }

  static HomeScreenTheme of(BuildContext context) {
    return Theme.of(context).extension<HomeScreenTheme>()!;
  }
}
