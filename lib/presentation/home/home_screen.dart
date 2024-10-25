import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:up4date/presentation/home/theme/index.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeScreenTheme = HomeScreenTheme.of(context);

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.home,
            color: homeScreenTheme.homeIconColor,
            size: homeScreenTheme.homeIconSize,
          ),
          Text(
            'welcome_text'.tr(),
            style: homeScreenTheme.titleTextStyle,
          ),
        ],
      ),
    ));
  }
}
