import 'package:flutter/material.dart';
import 'package:up4date/presentation/theme/theme.dart';

final whiteColor = Up4DateColor(Colors.white.value);

Up4DateColorTheme createColorTheme(Up4DateColor color) {
  return Up4DateColorTheme(
    brightness: Brightness.light,
    backgroundPrimary: color,
    primary: color,
    secondary: color,
    tertiary: color,
  );
}
