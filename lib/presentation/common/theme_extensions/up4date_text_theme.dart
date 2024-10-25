import 'package:flutter/material.dart';
import 'package:up4date/presentation/theme/up4date_color_theme.dart';
import 'package:up4date/presentation/theme/up4date_colors_palette.dart';

class Up4DateTextTheme extends ThemeExtension<Up4DateTextTheme> {
  Up4DateTextTheme({
    required this.colorTheme,
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
  }) {
    this.displayLarge = displayLarge ?? _displayLarge;
    this.displayMedium = displayMedium ?? _displayMedium;
    this.displaySmall = displaySmall ?? _displaySmall;
    this.headlineLarge = headlineLarge ?? _headlineLarge;
    this.headlineMedium = headlineMedium ?? _headlineMedium;
    this.headlineSmall = headlineSmall ?? _headlineSmall;
    this.titleLarge = titleLarge ?? _titleLarge;
    this.titleMedium = titleMedium ?? _titleMedium;
    this.titleSmall = titleSmall ?? _titleSmall;
    this.bodyLarge = bodyLarge ?? _bodyLarge;
    this.bodyMedium = bodyMedium ?? _bodyMedium;
    this.bodySmall = bodySmall ?? _bodySmall;
    this.labelLarge = labelLarge ?? _labelLarge;
    this.labelMedium = labelMedium ?? _labelMedium;
    this.labelSmall = labelSmall ?? _labelSmall;
  }
  late final TextStyle displayLarge;
  late final TextStyle displayMedium;
  late final TextStyle displaySmall;
  late final TextStyle headlineLarge;
  late final TextStyle headlineMedium;
  late final TextStyle headlineSmall;
  late final TextStyle titleLarge;
  late final TextStyle titleMedium;
  late final TextStyle titleSmall;
  late final TextStyle bodyLarge;
  late final TextStyle bodyMedium;
  late final TextStyle bodySmall;
  late final TextStyle labelLarge;
  late final TextStyle labelMedium;
  late final TextStyle labelSmall;
  final Up4DateColorTheme colorTheme;

  late final _displayLarge = const TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    color: Up4DateColorsPalette.white,
  );
  late final _displayMedium = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: Up4DateColorsPalette.white,
  );
  late final _displaySmall = const TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
  );
  late final _headlineLarge = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Up4DateColorsPalette.white,
  );
  late final _headlineMedium = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Up4DateColorsPalette.white,
  );
  late final _headlineSmall = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Up4DateColorsPalette.white,
  );
  late final _titleLarge = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Up4DateColorsPalette.white,
  );
  late final _titleMedium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Up4DateColorsPalette.white,
  );
  late final _titleSmall = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Up4DateColorsPalette.white,
  );
  late final _bodyLarge = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Up4DateColorsPalette.white,
  );
  late final _bodyMedium = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Up4DateColorsPalette.white,
  );
  late final _bodySmall = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Up4DateColorsPalette.white,
  );
  late final _labelLarge = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Up4DateColorsPalette.white,
  );
  late final _labelMedium = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: Up4DateColorsPalette.white,
  );
  late final _labelSmall = const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: Up4DateColorsPalette.white,
  );

  @override
  int get hashCode => Object.hash(
        colorTheme,
        displayLarge,
        displayMedium,
        displaySmall,
        headlineLarge,
        headlineMedium,
        headlineSmall,
        titleLarge,
        titleMedium,
        titleSmall,
        bodyLarge,
        bodyMedium,
        bodySmall,
        labelLarge,
        labelMedium,
        labelSmall,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Up4DateTextTheme &&
          colorTheme == other.colorTheme &&
          runtimeType == other.runtimeType &&
          displayLarge == other.displayLarge &&
          displayMedium == other.displayMedium &&
          displaySmall == other.displaySmall &&
          headlineLarge == other.headlineLarge &&
          headlineMedium == other.headlineMedium &&
          headlineSmall == other.headlineSmall &&
          titleLarge == other.titleLarge &&
          titleSmall == other.titleSmall &&
          titleMedium == other.titleMedium &&
          bodyLarge == other.bodyLarge &&
          bodyMedium == other.bodyMedium &&
          bodySmall == other.bodySmall &&
          labelLarge == other.labelLarge &&
          labelMedium == other.labelMedium &&
          labelSmall == other.labelSmall;

  @override
  Up4DateTextTheme copyWith({
    Up4DateColorTheme? colorTheme,
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
  }) {
    return Up4DateTextTheme(
      colorTheme: colorTheme ?? this.colorTheme,
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
    );
  }

  @override
  ThemeExtension<Up4DateTextTheme> lerp(
    covariant ThemeExtension<Up4DateTextTheme>? other,
    double t,
  ) {
    if (other is! Up4DateTextTheme) {
      return this;
    }

    return Up4DateTextTheme(
      colorTheme: colorTheme,
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t),
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t),
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t),
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t),
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t),
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t),
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t),
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t),
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t),
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t),
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t),
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t),
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t),
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t),
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t),
    );
  }

  static Up4DateTextTheme of(BuildContext context) {
    return Theme.of(context).extension<Up4DateTextTheme>()!;
  }
}
