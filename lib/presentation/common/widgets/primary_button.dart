import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up4date/app/app_theme_mode/index.dart';
import 'package:up4date/presentation/common/index.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  const PrimaryButton({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final primaryButtonTheme = PrimaryButtonTheme.of(context);

    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        text,
        style: primaryButtonTheme.adaptiveTextStyle(
          isEnable: onTap != null,
          themeMode: context.watch<AppThemeMode>().themeMode,
        ),
      ),
      style: primaryButtonTheme.buttonStyle,
    );
  }
}
