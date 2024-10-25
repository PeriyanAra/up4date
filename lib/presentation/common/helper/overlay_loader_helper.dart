import 'package:flutter/material.dart';
import 'package:up4date/presentation/common/index.dart';

class OverlayLoaderHelper {
  OverlayEntry? _overlay;

  void show(
    BuildContext context,
  ) {
    if (_overlay == null) {
      final theme = OverlayLoaderHelperTheme.of(context);

      _overlay = OverlayEntry(
        builder: (context) {
          return Container(
            color: theme.backgroundColor,
            alignment: Alignment.center,
            child: CircularProgressIndicator(
              color: theme.loaderColor,
            ),
          );
        },
      );
      Overlay.of(context).insert(_overlay!);
    }
  }

  void hide() {
    _overlay?.remove();
    _overlay = null;
  }
}
