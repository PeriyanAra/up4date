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
    required this.foregroundPrimary,
    required this.foregroundSecondary,
    required this.foregroundTertiary,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.backgroundTertiary,
  });

  final Brightness brightness;

  final Up4DateColor primary;
  final Up4DateColor secondary;
  final Up4DateColor tertiary;

  final Up4DateColor foregroundPrimary;
  final Up4DateColor foregroundSecondary;
  final Up4DateColor foregroundTertiary;

  final Up4DateColor backgroundPrimary;
  final Up4DateColor backgroundSecondary;
  final Up4DateColor backgroundTertiary;

  @override
  int get hashCode => Object.hash(
        primary,
        secondary,
        tertiary,
        foregroundPrimary,
        foregroundSecondary,
        foregroundTertiary,
        backgroundPrimary,
        backgroundSecondary,
        backgroundTertiary,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Up4DateColorTheme &&
          runtimeType == other.runtimeType &&
          primary == other.primary &&
          secondary == other.secondary &&
          tertiary == other.tertiary &&
          foregroundPrimary == other.foregroundPrimary &&
          foregroundSecondary == other.foregroundSecondary &&
          foregroundTertiary == other.foregroundTertiary &&
          backgroundPrimary == other.backgroundPrimary &&
          backgroundSecondary == other.backgroundSecondary &&
          backgroundTertiary == other.backgroundTertiary;

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
      foregroundPrimary: foregroundPrimary,
      foregroundSecondary: foregroundSecondary,
      foregroundTertiary: foregroundTertiary,
      backgroundPrimary: backgroundPrimary,
      backgroundSecondary: backgroundSecondary,
      backgroundTertiary: backgroundTertiary,
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
      foregroundPrimary: foregroundPrimary.lerp(other.foregroundPrimary, t),
      foregroundSecondary:
          foregroundSecondary.lerp(other.foregroundSecondary, t),
      foregroundTertiary: foregroundTertiary.lerp(other.foregroundTertiary, t),
      backgroundPrimary: backgroundPrimary.lerp(other.backgroundPrimary, t),
      backgroundSecondary:
          backgroundSecondary.lerp(other.backgroundSecondary, t),
      backgroundTertiary: backgroundTertiary.lerp(other.backgroundTertiary, t),
    );
  }

  static Up4DateColorTheme of(BuildContext context) {
    return Theme.of(context).extension<Up4DateColorTheme>()!;
  }
}
