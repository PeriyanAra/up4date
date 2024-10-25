import 'package:flutter/material.dart';
import 'package:up4date/presentation/common/theme_extensions/index.dart';
import 'package:up4date/presentation/theme/up4date_color.dart';
import 'package:up4date/presentation/theme/up4date_color_theme.dart';
import 'package:up4date/presentation/theme/up4date_colors_palette.dart';

class Up4DateTheme {
  static ThemeData light() {
    final colorTheme = _lightColorTheme();
    final appTextTheme = Up4DateTextTheme(colorTheme: colorTheme);
    final appBarTheme = Up4DateAppBarTheme(colorTheme: colorTheme);
    final registrationScreenTheme = RegistrationScreenTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colorTheme.primary,
      ),
      applyElevationOverlayColor: false,
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: colorTheme.backgroundPrimary,
      extensions: <ThemeExtension<dynamic>>[
        colorTheme,
        appBarTheme,
        appTextTheme,
        registrationScreenTheme,
      ],
    );
  }

  static ThemeData dark() {
    final colorTheme = _darkColorTheme();
    final appTextTheme = Up4DateTextTheme(colorTheme: colorTheme);
    final appBarTheme = Up4DateAppBarTheme(colorTheme: colorTheme);
    final registrationScreenTheme = RegistrationScreenTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colorTheme.primary,
      ),
      applyElevationOverlayColor: false,
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: colorTheme.backgroundPrimary,
      extensions: <ThemeExtension<dynamic>>[
        colorTheme,
        appBarTheme,
        appTextTheme,
        registrationScreenTheme,
      ],
    );
  }

  static Up4DateColorTheme _lightColorTheme() {
    return _baseColorTheme(
      brightness: Brightness.light,
      foregroundPrimary: Up4DateColor(
        Up4DateColorsPalette.black.value,
        pressed: Up4DateColorsPalette.skin60,
      ),
      foregroundSecondary: Up4DateColor(
        Up4DateColorsPalette.gray60.value,
        disabled: Up4DateColorsPalette.black,
      ),
      foregroundTertiary: Up4DateColor(
        Up4DateColorsPalette.white.value,
        disabled: Up4DateColorsPalette.gray10,
      ),
      backgroundPrimary: Up4DateColor(
        Up4DateColorsPalette.black.value,
        pressed: Up4DateColorsPalette.gray10,
      ),
      backgroundSecondary: Up4DateColor(
        Up4DateColorsPalette.gray10.value,
        pressed: Up4DateColorsPalette.light,
      ),
      backgroundTertiary: Up4DateColor(
        Up4DateColorsPalette.white.value,
      ),
    );
  }

  static Up4DateColorTheme _darkColorTheme() {
    return _baseColorTheme(
      brightness: Brightness.dark,
      foregroundPrimary: Up4DateColor(
        Up4DateColorsPalette.white.value,
      ),
      foregroundSecondary: Up4DateColor(
        Up4DateColorsPalette.gray50.value,
      ),
      foregroundTertiary: Up4DateColor(
        Up4DateColorsPalette.dark60.value,
      ),
      backgroundPrimary: Up4DateColor(
        Up4DateColorsPalette.black.value,
      ),
      backgroundSecondary: Up4DateColor(
        Up4DateColorsPalette.dark50.value,
      ),
      backgroundTertiary: Up4DateColor(
        Up4DateColorsPalette.white.value,
      ),
    );
  }

  /////////////////////////////////////////////////////////////////
  /************************* BASE ********************************/
  /////////////////////////////////////////////////////////////////

  static Up4DateColorTheme _baseColorTheme({
    required Brightness brightness,
    required Up4DateColor foregroundPrimary,
    required Up4DateColor foregroundSecondary,
    required Up4DateColor foregroundTertiary,
    required Up4DateColor backgroundPrimary,
    required Up4DateColor backgroundSecondary,
    required Up4DateColor backgroundTertiary,
  }) {
    return Up4DateColorTheme(
      brightness: brightness,
      primary: Up4DateColor(
        Up4DateColorsPalette.red60.value,
      ),
      secondary: Up4DateColor(
        Up4DateColorsPalette.yellow60.value,
      ),
      tertiary: Up4DateColor(
        Up4DateColorsPalette.blue60.value,
      ),
      foregroundPrimary: foregroundPrimary,
      foregroundSecondary: foregroundSecondary,
      foregroundTertiary: foregroundTertiary,
      backgroundPrimary: backgroundPrimary,
      backgroundSecondary: backgroundSecondary,
      backgroundTertiary: backgroundTertiary,
    );
  }
}
