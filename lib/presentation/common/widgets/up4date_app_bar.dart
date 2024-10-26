import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up4date/presentation/common/index.dart';

class Up4DateAppBar extends StatelessWidget implements PreferredSizeWidget {
  const Up4DateAppBar({
    super.key,
    this.title = '',
    this.isBackButtonShown = true,
    this.onBackButtonTap,
  });

  final String title;
  final bool isBackButtonShown;
  final VoidCallback? onBackButtonTap;

  @override
  Widget build(BuildContext context) {
    final up4dateAppBarTheme = Up4DateAppBarTheme.of(context);

    return AppBar(
      title: Text(title),
      leading: isBackButtonShown
          ? Padding(
              padding: up4dateAppBarTheme.leadingPadding,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: onBackButtonTap,
                child: Container(
                  decoration: up4dateAppBarTheme.backButtonDecoration,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    AppIcons.backIcon,
                  ),
                ),
              ),
            )
          : null,
      leadingWidth: up4dateAppBarTheme.leadingWidth,
      backgroundColor: up4dateAppBarTheme.backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
