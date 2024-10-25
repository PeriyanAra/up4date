import 'package:flutter/material.dart';
import 'package:up4date/presentation/common/index.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  const SecondaryButton({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final secondaryButtonTheme = SecondaryButtonTheme.of(context);

    return OutlinedButton(
      onPressed: onTap,
      child: Text(
        text,
        style: secondaryButtonTheme.textStyle,
      ),
      style: secondaryButtonTheme.buttonStyle,
    );
  }
}
