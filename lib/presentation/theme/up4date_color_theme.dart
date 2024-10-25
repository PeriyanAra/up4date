import 'package:flutter/material.dart';
import 'package:up4date/presentation/theme/up4date_color.dart';

const _halfT = 0.5;

@immutable
class Up4DateColorTheme extends ThemeExtension<Up4DateColorTheme> {
  const Up4DateColorTheme({
    required this.brightness,
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.backgroundPrimary,
  });

  final Brightness brightness;

  final Up4DateColor primary;
  final Up4DateColor secondary;
  final Up4DateColor tertiary;

  final Up4DateColor backgroundPrimary;

  @override
  int get hashCode => Object.hash(
        primary,
        secondary,
        tertiary,
        backgroundPrimary,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Up4DateColorTheme &&
          runtimeType == other.runtimeType &&
          primary == other.primary &&
          secondary == other.secondary &&
          tertiary == other.tertiary &&
          backgroundPrimary == other.backgroundPrimary;

  @override
  Up4DateColorTheme copyWith({
    Up4DateColor? primary,
    Up4DateColor? secondary,
  }) {
    return Up4DateColorTheme(
      brightness: brightness,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary,
      backgroundPrimary: backgroundPrimary,
    );
  }

  @override
  ThemeExtension<Up4DateColorTheme> lerp(
    covariant ThemeExtension<Up4DateColorTheme>? other,
    double t,
  ) {
    if (other is! Up4DateColorTheme) {
      return this;
    }

    return Up4DateColorTheme(
      brightness: t < _halfT ? brightness : other.brightness,
      primary: primary.lerp(other.primary, t),
      secondary: secondary.lerp(other.secondary, t),
      tertiary: tertiary.lerp(other.tertiary, t),
      backgroundPrimary: backgroundPrimary.lerp(other.backgroundPrimary, t),
    );
  }

  static Up4DateColorTheme of(BuildContext context) {
    return Theme.of(context).extension<Up4DateColorTheme>()!;
  }
}
