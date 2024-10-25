import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up4date/presentation/common/index.dart';

class Up4DateAppBar extends StatelessWidget implements PreferredSizeWidget {
  const Up4DateAppBar({
    super.key,
    this.actions,
    this.title = '',
  });

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final up4dateAppBarTheme = Up4DateAppBarTheme.of(context);

    return AppBar(
      title: Text(title),
      actions: actions,
      leading: Padding(
        padding: up4dateAppBarTheme.leadingPadding,
        child: SvgPicture.asset(
          Assets.backButton,
        ),
      ),
      leadingWidth: up4dateAppBarTheme.leadingWidth,
      backgroundColor: up4dateAppBarTheme.backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
