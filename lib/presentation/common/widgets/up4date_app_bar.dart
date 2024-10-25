import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up4date/presentation/common/constants/assets.dart';
import 'package:up4date/presentation/common/theme_extensions/index.dart';

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
    final customAppBarTheme = Up4DateAppBarTheme.of(context);

    return AppBar(
      title: Text(title),
      actions: actions,
      leading: Padding(
        padding: customAppBarTheme.leadingPadding,
        child: SvgPicture.asset(
          Assets.backButton,
        ),
      ),
      leadingWidth: customAppBarTheme.leadingWidth,
      backgroundColor: Colors.black,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
