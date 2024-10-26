import 'package:flutter/material.dart';
import 'package:up4date/presentation/auth/theme/index.dart';
import 'package:up4date/presentation/common/index.dart';
import 'package:up4date/presentation/home/theme/index.dart';
import 'package:up4date/presentation/registration/theme/index.dart';
import 'package:up4date/presentation/theme/index.dart';
import 'package:up4date/presentation/verification/theme/index.dart';

class Up4DateTheme {
  static ThemeData light() {
    final colorTheme = _lightColorTheme();
    final appTextTheme = Up4DateTextTheme(colorTheme: colorTheme);
    final appBarTheme = Up4DateAppBarTheme(colorTheme: colorTheme);
    final registrationScreenTheme = RegistrationScreenTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );
    final primaryButtonTheme = PrimaryButtonTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );
    final secondaryButtonTheme = SecondaryButtonTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );
    final authScreenTheme = AuthScreenTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );
    final homeScreenTheme = HomeScreenTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );
    final overlayLoaderHelperTheme = OverlayLoaderHelperTheme(
      colorTheme: colorTheme,
    );
    final verificationScreenTheme = VerificationScreenTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );
    final languageDialogHelperTheme = LanguageDialogHelperTheme(
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
        primaryButtonTheme,
        secondaryButtonTheme,
        authScreenTheme,
        homeScreenTheme,
        overlayLoaderHelperTheme,
        verificationScreenTheme,
        languageDialogHelperTheme,
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
    final verificationScreenTheme = VerificationScreenTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );
    final primaryButtonTheme = PrimaryButtonTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );
    final secondaryButtonTheme = SecondaryButtonTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );
    final authScreenTheme = AuthScreenTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );
    final homeScreenTheme = HomeScreenTheme(
      colorTheme: colorTheme,
      textTheme: appTextTheme,
    );
    final overlayLoaderHelperTheme = OverlayLoaderHelperTheme(
      colorTheme: colorTheme,
    );
    final languageDialogHelperTheme = LanguageDialogHelperTheme(
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
        primaryButtonTheme,
        secondaryButtonTheme,
        authScreenTheme,
        verificationScreenTheme,
        homeScreenTheme,
        overlayLoaderHelperTheme,
        languageDialogHelperTheme,
      ],
    );
  }

  static Up4DateColorTheme _darkColorTheme() {
    return Up4DateColorTheme(
      brightness: Brightness.dark,
      primary: Up4DateColor(
        Up4DateColorsPalette.yellowAcidic.value,
        disabled: Up4DateColorsPalette.gray,
      ),
      secondary: Up4DateColor(
        Up4DateColorsPalette.white.value,
      ),
      tertiary: Up4DateColor(
        Up4DateColorsPalette.purple.value,
      ),
      backgroundPrimary: Up4DateColor(
        Up4DateColorsPalette.black.value,
      ),
      backgroundSecondary: Up4DateColor(
        Up4DateColorsPalette.black50.value,
      ),
    );
  }

  static Up4DateColorTheme _lightColorTheme() {
    return Up4DateColorTheme(
      brightness: Brightness.light,
      primary: Up4DateColor(
        Up4DateColorsPalette.yellowAcidic.value,
        disabled: Up4DateColorsPalette.gray10,
      ),
      secondary: Up4DateColor(
        Up4DateColorsPalette.black.value,
      ),
      tertiary: Up4DateColor(
        Up4DateColorsPalette.purple.value,
      ),
      backgroundPrimary: Up4DateColor(
        Up4DateColorsPalette.white.value,
      ),
      backgroundSecondary: Up4DateColor(
        Up4DateColorsPalette.gray10.value,
      ),
    );
  }
}
