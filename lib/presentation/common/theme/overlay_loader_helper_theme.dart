import 'package:flutter/material.dart';
import 'package:up4date/presentation/theme/index.dart';

class OverlayLoaderHelperTheme extends ThemeExtension<OverlayLoaderHelperTheme> {
  const OverlayLoaderHelperTheme({
    required Up4DateColorTheme colorTheme,
  }) : _colorTheme = colorTheme;

  final Up4DateColorTheme _colorTheme;

  Color get backgroundColor => _colorTheme.primary.withOpacity(0.4);
  Color get loaderColor => _colorTheme.primary;


  @override
  int get hashCode => Object.hash(
        _colorTheme,
        this,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OverlayLoaderHelperTheme &&
          runtimeType == other.runtimeType &&
          _colorTheme == other._colorTheme;

  @override
  OverlayLoaderHelperTheme copyWith({
    Up4DateColorTheme? colorTheme,
  }) {
    return OverlayLoaderHelperTheme(
      colorTheme: colorTheme ?? _colorTheme,
    );
  }

  @override
  ThemeExtension<OverlayLoaderHelperTheme> lerp(
    covariant ThemeExtension<OverlayLoaderHelperTheme>? other,
    double t,
  ) {
    return this;
  }

  static OverlayLoaderHelperTheme of(BuildContext context) {
    return Theme.of(context).extension<OverlayLoaderHelperTheme>()!;
  }
}
