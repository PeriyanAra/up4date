import 'package:flutter/material.dart';

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
    return OutlinedButton(
      onPressed: onTap,
      child: Text(text),
    );
  }
}
