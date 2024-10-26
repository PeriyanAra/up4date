import 'package:flutter/material.dart';
import 'package:up4date/presentation/theme/index.dart';

class LanguageDialogHelperTheme
    extends ThemeExtension<LanguageDialogHelperTheme> {
  const LanguageDialogHelperTheme({
    required Up4DateColorTheme colorTheme,
    required Up4DateTextTheme textTheme,
  })  : _colorTheme = colorTheme,
        _textTheme = textTheme;

  final Up4DateColorTheme _colorTheme;
  final Up4DateTextTheme _textTheme;

  EdgeInsets get contentItemsPadding => EdgeInsets.symmetric(vertical: 4.0);

  Color get backgroundColor => _colorTheme.backgroundSecondary;

  TextStyle get titleTextStyle => _textTheme.headlineLarge.copyWith(
        color: _colorTheme.secondary,
      );

  @override
  int get hashCode => Object.hash(
        _colorTheme,
        _textTheme,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LanguageDialogHelperTheme &&
          runtimeType == other.runtimeType &&
          _textTheme == other._textTheme &&
          _colorTheme == other._colorTheme;

  @override
  LanguageDialogHelperTheme copyWith({
    Up4DateColorTheme? colorTheme,
    Up4DateTextTheme? textTheme,
  }) {
    return LanguageDialogHelperTheme(
      colorTheme: colorTheme ?? _colorTheme,
      textTheme: textTheme ?? _textTheme,
    );
  }

  @override
  ThemeExtension<LanguageDialogHelperTheme> lerp(
    covariant ThemeExtension<LanguageDialogHelperTheme>? other,
    double t,
  ) {
    return this;
  }

  static LanguageDialogHelperTheme of(BuildContext context) {
    return Theme.of(context).extension<LanguageDialogHelperTheme>()!;
  }
}
