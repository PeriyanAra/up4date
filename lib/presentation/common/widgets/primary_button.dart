import 'package:flutter/material.dart';
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
        // style: primaryButtonTheme.textStyle,
      ),
      style: primaryButtonTheme.buttonStyle,
    );
  }
}
